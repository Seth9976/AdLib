//  This file is part of Adlib Tracker II (AT2).
//
//  AT2 is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  AT2 is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS For A PARTICULAR PURPOSE.  See the
//  GNU General Public License For more details.
//
//  You should have received a copy of the GNU General Public License
//  along with AT2.  If not, see <http://www.gnu.org/licenses/>.

unit ParserIO;
{$S-,Q-,R-,V-,B-,X+}
{$PACKRECORDS 1}
interface

function Scan(var buf; skip, size: Longint; str: String): Longint;
function SensitiveScan(var buf; skip, size: Longint; str: String): Longint;
function Compare(var buf1, buf2; size: Longint): Boolean;
function Empty(var buf; size: Longint): Boolean;
function CountLines(var buf; size: Longint): Longint;
function Update16(var buf; size: Longint; crc: Word): Word;
function Update32(var buf; size: Longint; crc: Longint): Longint;

implementation

uses
  StringIO;

type
  pBYTE_ARRAY = ^tBYTE_ARRAY;
  tBYTE_ARRAY = array[0..PRED(SizeOf(LONGINT))] of Byte;

var
  CRC16_table: array[BYTE] of Word;
  CRC32_table: array[BYTE] of Longint;

function Scan(var buf; skip, size: Longint; str: String): Longint;

{$IFDEF GO32V2}
var
  result: Longint;

begin
  asm
        lea     edi,[str]
        mov     esi,edi
        xor     eax,eax
        lodsb
        stosb
        xor     ecx,ecx
        mov     ecx,eax
        xor     ebx,ebx
        mov     ebx,eax
        jecxz    @@9
@@1:    lodsb
        cmp     al,'a'
        jb      @@2
        cmp     al,'z'
        ja      @@2
        sub     al,20h
@@2:    stosb
        loop    @@1
        sub     edi,ebx
        mov     esi,[buf]
        add     esi,skip
        mov     ecx,size
        sub     ecx,skip
        jecxz   @@8
        cld
        sub     ecx,ebx
        jb      @@8
        inc     ecx
@@4:    mov     ah,[edi]
        and     ah,NOT 20h
@@5:    lodsb
        and     al,NOT 20h
        cmp     al,ah
        loopne  @@5
        jne     @@8
        dec     esi
        mov     edx,ecx
        mov     ecx,ebx
@@6:    repe    cmpsb
        je      @@10
        mov     al,[esi-1]
        cmp     al,'a'
        jb      @@7
        cmp     al,'z'
        ja      @@7
        sub     al,20h
@@7:    cmp     al,[edi-1]
        je      @@6
        sub     ecx,ebx
        add     esi,ecx
        add     edi,ecx
        inc     esi
        mov     ecx,edx
        jne     @@4
@@8:    xor     eax,eax
        jmp     @@11
@@9:    mov     eax,1
        jmp     @@11
@@10:   sub     esi,ebx
        mov     eax,esi
        sub     eax,dword ptr [buf]
        inc     eax
@@11:   dec     eax
        mov     result,eax
  end;
  Scan := result;
end;
{$ELSE}
var
  idx, idx2: Longint;
  ptr: pBYTE_ARRAY;
  match: Boolean;

begin
  If (str = '') then
    begin
      Scan := 0;
      EXIT;
    end;

  ptr := @buf;
  str := Upper(str);

  For idx := skip to size-Length(str) do
    begin
      match := TRUE;
      For idx2 := 1 to Length(str) do
        begin
          If (UpCase(CHAR(ptr^[idx+idx2-1])) <> str[idx2]) then
            begin
              match := FALSE;
              BREAK;
            end;
        end;

      If match then
        begin
          Scan := idx;
          EXIT;
        end;
    end;

  Scan := -1;
end;
{$ENDIF}

function SensitiveScan(var buf; skip, size: Longint; str: String): Longint;

{$IFDEF GO32V2}
var
  result: Longint;

begin
  asm
        mov     edi,[buf]
        add     edi,skip
        lea     esi,[str]
        mov     ecx,size
        sub     ecx,skip
        xor     eax,eax
        jecxz   @@3
        cld
        lodsb
        cmp     al,1
        jb      @@5
        ja      @@1
        lodsb
        repne   scasb
        jne     @@3
        jmp     @@5
@@1:    xor     ah,ah
        mov     ebx,eax
        dec     ebx
        mov     edx,ecx
        sub     edx,eax
        jb      @@3
        lodsb
        add     edx,2
@@2:    dec     edx
        mov     ecx,edx
        repne   scasb
        jne     @@3
        mov     edx,ecx
        mov     ecx,ebx
        rep     cmpsb
        je      @@4
        sub     ecx,ebx
        add     esi,ecx
        add     edi,ecx
        inc     edi
        or      edx,edx
        jne     @@2
@@3:    xor     eax,eax
        jmp     @@6
@@4:    sub     edi,ebx
@@5:    mov     eax,edi
        sub     eax,dword ptr [buf]
@@6:    dec     eax
        mov     result,eax
  end;
  SensitiveScan := result;
end;
{$ELSE}
var
  idx, idx2: Longint;
  ptr: pBYTE_ARRAY;
  match: Boolean;

begin
  If (str = '') then
    begin
      SensitiveScan := 0;
      EXIT;
    end;

  ptr := @buf;
  For idx := skip to size-Length(str) do
    begin
      match := TRUE;
      For idx2 := 1 to Length(str) do
        begin
          If (CHAR(ptr^[idx+idx2-1]) <> str[idx2]) then
            begin
              match := FALSE;
              BREAK;
            end;
        end;

      If match then
        begin
          SensitiveScan := idx;
          EXIT;
        end;
    end;

  SensitiveScan := -1;
end;
{$ENDIF}

function Compare(var buf1, buf2; size: Longint): Boolean;

{$IFDEF GO32V2}
var
  result: Boolean;

begin
  asm
        xor     edx,edx
        mov     eax,size
        cmp     eax,16
        jb      @@3
        mov     ecx,4
        div     ecx
        mov     ecx,eax
        jecxz   @@1
        mov     esi,[buf1]
        mov     edi,[buf2]
        cld
        repz    cmpsd
        jnz     @@2
        mov     ecx,edx
        jecxz   @@1
        repz    cmpsb
        jnz     @@2
@@1:    mov     result,TRUE
        jmp     @@6
@@2:    mov     result,FALSE
        jmp     @@6
@@3:    mov     ecx,size
        jecxz   @@4
        mov     esi,[buf1]
        mov     edi,[buf2]
        cld
        repz    cmpsb
        jnz     @@5
@@4:    mov     result,TRUE
        jmp     @@6
@@5:    mov     result,FALSE
@@6:
  end;
  Compare := result;
end;
{$ELSE}
var
  idx: Longint;
  ptr1, ptr2: pBYTE_ARRAY;

begin
  ptr1 := @buf1;
  ptr2 := @buf2;

  For idx := 0 to size-1 do
    If (ptr1^[idx] <> ptr2^[idx]) then
      begin
        Compare := FALSE;
        EXIT;
      end;

  Compare := TRUE;
end;
{$ENDIF}

function Empty(var buf; size: Longint): Boolean;

{$IFNDEF GO32V2}
var
  idx: Longint;
  ptr: pBYTE_ARRAY;

begin
  ptr := @buf;
  For idx := 0 to size-1 do
    If (ptr^[idx] <> 0) then
      begin
        Empty := FALSE;
        EXIT;
      end;

  Empty := TRUE;
end;
{$ELSE}

var
  result: Boolean;

begin
  asm
        xor     edx,edx
        mov     eax,size
        cmp     eax,16
        jb      @@3
        mov     ecx,4
        div     ecx
        mov     ecx,eax
        jecxz   @@1
        mov     edi,[buf]
        xor     eax,eax
        repz    scasd
        jnz     @@2
        mov     ecx,edx
        jecxz   @@1
        repz    scasb
        jnz     @@2
@@1:    mov     result,TRUE
        jmp     @@6
@@2:    mov     result,FALSE
        jmp     @@6
@@3:    mov     ecx,size
        jecxz   @@4
        mov     edi,[buf]
        xor     eax,eax
        repz    scasb
        jnz     @@5
@@4:    mov     result,TRUE
        jmp     @@6
@@5:    mov     result,FALSE
@@6:
  end;
  Empty := result;
end;
{$ENDIF}

function CountLines(var buf; size: Longint): Longint;

{$IFNDEF GO32V2}
var
  idx, result: Longint;
  ptr: pBYTE_ARRAY;

begin
  result := 0;
  ptr := @buf;
  For idx := 0 to size-1 do
    If (CHAR(ptr^[idx]) = #10) then
      Inc(result);
  CountLines := result;
end;
{$ELSE}
var
  result: Longint;

begin
  asm
        mov     edi,[buf]
        mov     ecx,size
        mov     edx,edi
        add     edx,ecx
        xor     ebx,ebx
        jecxz   @@3
@@1:    mov     al,0dh
        repnz   scasb
        jnz     @@3
        cmp     byte ptr [edi],0ah
        jnz     @@2
        inc     edi
        inc     ebx
@@2:    cmp     edi,edx
        jb      @@1
@@3:    mov     eax,ebx
        mov     result,eax
  end;
  CountLines := result;
end;
{$ENDIF}

function Update16(var buf; size: Longint; crc: Word): Word;

{$IFDEF GO32V2}

var
  result: Word;

begin
  asm
        mov     esi,[buf]
        lea     edi,[CRC16_table]
        mov     bx,crc
        mov     ecx,size
        jecxz   @@2
@@1:    xor     ax,ax
        lodsb
        mov     dl,bh
        xor     dh,dh
        xor     bh,bh
        xor     bx,ax
        and     ebx,000000ffh
        shl     ebx,1
        mov     bx,[edi+ebx]
        xor     bx,dx
        loop    @@1
@@2:    mov     ax,bx
        mov     result,ax
  end;
  Update16 := result;
end;
{$ELSE}
var
  idx: Longint;
  ptr: pBYTE_ARRAY;

begin
  ptr := @buf;
  For idx := 0 to size-1 do
    crc := (crc SHR 8) XOR CRC16_table[(crc XOR ptr^[idx]) AND $0ff];
  Update16 := crc;
end;
{$ENDIF}

function Update32(var buf; size: Longint; crc: Longint): Longint;

{$IFDEF GO32V2}
var
  result: Longint;

begin
  asm
        mov     esi,[buf]
        lea     edi,[CRC32_table]
        mov     ebx,crc
        mov     ecx,size
        jecxz   @@2
@@1:    xor     eax,eax
        lodsb
        xor     ebx,eax
        mov     edx,ebx
        and     ebx,000000ffh
        shl     ebx,2
        mov     ebx,[edi+ebx]
        shr     edx,8
        and     edx,00ffffffh
        xor     ebx,edx
        loop    @@1
@@2:    mov     eax,ebx
        mov     result,eax
  end;
  Update32 := result;
end;
{$ELSE}
var
  idx: Longint;
  ptr: pBYTE_ARRAY;

begin
  ptr := @buf;
  For idx := 0 to size-1 do
    crc := (crc SHR 8) XOR CRC32_table[(crc XOR ptr^[idx]) AND $0ff];
  Update32 := crc;
end;
{$ENDIF}

procedure make_table_16bit;

var
  crc: Word;
  n,index: Byte;

begin
  For index := 0 to 255 do
  begin
    crc := index;
    For n := 1 to 8 do
      If Odd(crc) then crc := crc SHR 1 XOR $0a001
      else crc := crc SHR 1;
    CRC16_table[index] := crc;
  end;
end;

procedure make_table_32bit;

var
  crc: Dword;
  n,index: Byte;

begin
  For index := 0 to 255 do
    begin
      crc := index;
      For n := 1 to 8 do
        If Odd(crc) then crc := crc SHR 1 XOR $0edb88320
        else crc := crc SHR 1;
      CRC32_table[index] := crc;
    end;
end;

begin
  make_table_16bit;
  make_table_32bit;
end.
