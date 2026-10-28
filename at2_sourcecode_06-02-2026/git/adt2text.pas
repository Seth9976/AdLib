//  This file is part of Adlib Tracker II (AT2).
//
//  AT2 is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  AT2 is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with AT2.  If not, see <http://www.gnu.org/licenses/>.

//{$DEFINE BETA}
unit AdT2text;
{$S-,Q-,R-,V-,B-,X+}
{$PACKRECORDS 1}
interface

const
{__AT2VER__}at2ver  = '2.3.58';
{__AT2DAT__}at2date = '06-02-2026';
{__AT2LNK__}at2link = '1:40pm';

const
{$IFNDEF BETA}
  _ADT2_TITLE_STRING_ = '/´DLiB TR/´CK3R ][';
{$ELSE}
  _ADT2_TITLE_STRING_ = '/´DLiB TR/´CK3R ][ BETA VERSiON';
{$ENDIF}
{$IFDEF GO32V2}
  _PLATFORM_STR_ = 'DOS';
{$ELSE}
  _PLATFORM_STR_ = 'SDL';
{$ENDIF}

const
{$IFDEF GO32V2}
  HELP_LINES = 1131;
{$ELSE}
  HELP_LINES = 1159;
{$ENDIF}

{$IFDEF GO32V2}

const
  ascii_line_01 = '           Ú-ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ--ùú               úù-¿';
  ascii_line_02 = '           ³             ~Û~`²`°         ~Û~`²`° ~ÛÛÛÛÛÛÛÛÛ~`²`°  ~ÛÛÛÛÛÛ~`²`°    ³';
  ascii_line_03 = '           ³             ~Û~`²`°         ~Û~`²`°     ~Û~`²`°     ~Û~`²`°    ~Û~`²`°   ³';
  ascii_line_04 = '           ù        ~Û~`²`°  ~Û~`²`°         ~Û~`²`°     ~Û~`²`°    ~Û~`²`°      ~Û~`²`°  ³';
  ascii_line_05 = '           ú       ~Û~`²`°   ~Û~`²`°         ~Û~`²`°     ~Û~`²`°     ~Û~`²`°     ~Û~`²`°  ³';
  ascii_line_06 = '                  ~Û~`²`°    ~Û~`²`°   ~ÛÛÛÛÛÛÛ~`²`°     ~Û~`²`°           ~ÛÛ~`²`°   ³';
  ascii_line_07 = '                 ~Û~`²`°  ~ÛÛÛÛ~`²`°  ~Û~`²`°    ~Û~`²`°     ~Û~`²`°          ~Û~`²`°     ³';
  ascii_line_08 = '                ~Û~`²`°      ~Û~`²`° ~Û~`²`°     ~Û~`²`°     ~Û~`²`°        ~Û~`²`°       ³';
  ascii_line_09 = '               ~Û~`²`°       ~Û~`²`° ~Û~`²`°     ~Û~`²`°     ~Û~`²`°      ~Û~`²`°         ³';
  ascii_line_10 = '           ú  ~Û~`²`°        ~Û~`²`° ~Û~`²`°     ~Û~`²`°     ~Û~`²`°     ~Û~`²`°     ~Û~`²`°  ³';
  ascii_line_11 = '           ù             ~Û~`²`°  ~ÛÛÛÛÛÛÛÛ~`²`°     ~Û~`²`°    ~ÛÛÛÛÛÛÛÛÛÛ~`²`°  ³';
  ascii_line_12 = '           À-ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ--ùú    úù-ÄÄÄÄÄÄÄÄÄÄÄ-Äùú  úù-ÄÄÄÄ-Ù';
  ascii_line_13 = '                    .:: ~THE ULTiMATE FM-TRACKiNG TOOL~ ::.          ';
  ascii_line_14 = '           Ú-Ä--ùú úù-ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ--ùú  úù-ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-¿';
  ascii_line_15 = '           ³ `code:`                               ~ÄÂÄ       ÄÄ~     ù';
  ascii_line_16 = '           ³ ~subz3ro/Altair~                 ~/´DLiB³R/´CK3R ³³ G3~  ú';
  ascii_line_17 = '           ³ `additional ideas:`               ~³       ³     ÄÄ~      ';
  ascii_line_18 = '           ³ ~Malfunction/Altair~                        ~'+at2ver+'~      ';
  ascii_line_19 = '           ³ ~Diode Milliampere~                                    ú';
  ascii_line_20 = '           ³ `special thanks:`                                      ú';
  ascii_line_21 = '           ³ ~encore~                         HOMEPAGE:             ³';
  ascii_line_22 = '           ³ ~Maan M. Hamze~                  www.adlibtracker.net  ³';
  ascii_line_23 = '           À-ÄÄÄÄÄÄÄÄÄÄ--ùú    úù-ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-Ù';

procedure C3WriteLn(str: String; atr1,atr2,atr3: Byte);

{$ELSE}

const
  ascii_line_01 = 'Ú-ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ--ùú               úù-¿';
  ascii_line_02 = '³             ~Û~`²`°         ~Û~`²`° ~ÛÛÛÛÛÛÛÛÛ~`²`°  ~ÛÛÛÛÛÛ~`²`°    ³';
  ascii_line_03 = '³             ~Û~`²`°         ~Û~`²`°     ~Û~`²`°     ~Û~`²`°    ~Û~`²`°   ³';
  ascii_line_04 = 'ù        ~Û~`²`°  ~Û~`²`°         ~Û~`²`°     ~Û~`²`°    ~Û~`²`°      ~Û~`²`°  ³';
  ascii_line_05 = 'ú       ~Û~`²`°   ~Û~`²`°         ~Û~`²`°     ~Û~`²`°     ~Û~`²`°     ~Û~`²`°  ³';
  ascii_line_06 = '       ~Û~`²`°    ~Û~`²`°   ~ÛÛÛÛÛÛÛ~`²`°     ~Û~`²`°           ~ÛÛ~`²`°   ³';
  ascii_line_07 = '      ~Û~`²`°  ~ÛÛÛÛ~`²`°  ~Û~`²`°    ~Û~`²`°     ~Û~`²`°          ~Û~`²`°     ³';
  ascii_line_08 = '     ~Û~`²`°      ~Û~`²`° ~Û~`²`°     ~Û~`²`°     ~Û~`²`°        ~Û~`²`°       ³';
  ascii_line_09 = '    ~Û~`²`°       ~Û~`²`° ~Û~`²`°     ~Û~`²`°     ~Û~`²`°      ~Û~`²`°         ³';
  ascii_line_10 = 'ú  ~Û~`²`°        ~Û~`²`° ~Û~`²`°     ~Û~`²`°     ~Û~`²`°     ~Û~`²`°     ~Û~`²`°  ³';
  ascii_line_11 = 'ù             ~Û~`²`°  ~ÛÛÛÛÛÛÛÛ~`²`°     ~Û~`²`°    ~ÛÛÛÛÛÛÛÛÛÛ~`²`°  ³';
  ascii_line_12 = 'À-ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ--ùú    úù-ÄÄÄÄÄÄÄÄÄÄÄ-Äùú  úù-ÄÄÄÄ-Ù';
  ascii_line_13 = '         .:: ~THE ULTiMATE FM-TRACKiNG TOOL~ ::.          ';
  ascii_line_14 = 'Ú-Ä--ùú úù-ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ--ùú  úù-ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-¿';
  ascii_line_15 = '³ `code:`                               ~ÄÂÄ       ÄÄ~     ù';
  ascii_line_16 = '³ ~subz3ro/Altair~                 ~/´DLiB³R/´CK3R ³³ SDL~ ú';
  ascii_line_17 = '³ `additional ideas:`               ~³       ³     ÄÄ~      ';
  ascii_line_18 = '³ ~Malfunction/Altair~                        ~'+at2ver+'~      ';
  ascii_line_19 = '³ ~Diode Milliampere~';
  ascii_line_20 = '³ `special thanks:`                                      ù';
  ascii_line_21 = '³ ~Dmitry Smagin~                                        ú';
  ascii_line_22 = '³ ~Ivan Tatarinov~                 HOMEPAGE:             ³';
  ascii_line_23 = '³ ~insane/Altair~                  www.adlibtracker.net  ³';
  ascii_line_24 = 'À-ÄÄÄÄÄÄÄÄÄÄ--ùú    úù-ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ-Ù';

procedure C3WriteLn(posX,PosY: Byte; str: String; atr1,atr2,atr3: Byte);

{$ENDIF}

const
  help_data: array[1..HELP_LINES] of String[128] = (
    '@topic:general',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `GENERAL KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~F1~                       Help',
    '~F2 (^S)~                  Save file',
    '~F3 (^L)~                  Load file',
    '~F4 (^A)~                  Toggle Nuke''m dialog',
    '~F5~                       Play',
    '~F6~                       Pause',
    '~F7~                       Stop',
    '~F8~                       Play song from current pattern or order',
    '~F9~                       Play current pattern or order only',
    '~[Ctrl] F8~                @F8 from current line ¿ ',
    '~[Ctrl] F9~                @F9 from current line Ã (Pattern Editor)',
    '~[Alt] F6~                 Single-play pattern   Ù (~Shift~ toggles trace)',
    '~[Alt] F5~                 @F5 ¿',
    '@input:alt_f8',
    '~[Alt] F9~                 @F9 Ù',
    '~[Shift] F2~               Quick Save',
    '~[Shift] F3~               Quick Load',
    '@input:shift_f5',
    '~[Shift] F6~               Toggle Debug mode from position at cursor',
    '@input:shift_f8',
    '@input:shift_f9',
    '~[Shift] Space~            Toggle MidiBoard mode ON/OFF',
    '~^Space~                   Toggle Note Recorder mode ON/OFF',
    '~[Ctrl] Home,End~          Skip to previous/next pattern while Tracing',
    '~+,-~                      Same as above; play pattern from start',
    '',
    '@topic:note_recorder',
    'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '³ `WHEN iN NOTE RECORDER MODE`                                            ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´',
    '³ ~[Ctrl] ,'#26'~       Select group of tracks for recording                 ³',
    '³ ~[Alt] Q~          Quick reset last selected group of tracks            ³',
    '³ ~Enter~            Start recording from current position ~(*)~            ³',
    '³ ~Space~            `Toggle` using custom instrument for all tracks ¿      ³@@spec_attr:01@@',
    '³ ~[Alt] Space~      `Toggle` using present instruments in tracks    ö ref. ³@@spec_attr:02@@',
    '³ ~MBoard keys~      Write notes to corresponding tracks           ø ~(*)~  ³',
    '³ ~F8,F9~            Toggle pattern repeat OFF/ON                  Ù      ³',
    '³ ~Backspace~        Clear note/instrument sequence in tracks             ³',
    '³ ~^Backspace~       Clear complete note/instrument columns               ³',
    '³ ~,~              Rewind/Fast-Forward while recording                  ³',
    '³ ~[Shift] ,~      Increase/Decrease row correction for writing notes   ³',
    '³ ~[Shift] F6~       Continue in Debug mode from position at cursor       ³',
    '³ ~F7~               Stop recording and reset starting position;          ³',
    '³                  current group of tracks can be modified              ³',
    '³ ~[Alt] 1..9,0~     Toggle track channel ON/OFF (~Shift~ toggles 1`X`)       ³',
    '³ ~[Alt] R~          Reset flags on all tracks                            ³',
    '³ ~*~                Reverse ON/OFF on all tracks                         ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´',
    '³ In case you need non-continuos track selection, you can choose        ³',
    '³ from already selected group a subset of tracks where notes will be    ³',
    '³ written by manipulating track ON/OFF flags.                           ³',
    'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ',
    '',
    'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '³ `iF SONG iS PLAYED WiTH TRACE, iT CAN BE REMOVED WHiLE...`          ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´',
    '³ ~Enter~        Playback is paused and cursor stays on position      ³',
    '³ ~Esc~          Cursor jumps to last position and playback continues ³',
    '³ ~[Shift] Esc~  Cursor stays on position and playback continues      ³',
    'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ',
    '',
    '~^Enter~                   Play next pattern according to order',
    '~[Ctrl]  ()~             Rewind current pattern (with Trace)',
    '~[Ctrl] '#26' ()~             Fast-Forward (with Trace)',
    '~[Ctrl]{Shift} ,~        Change playback speed up/down `{fine stepping}`',
    '~[Ctrl]{Shift} []~       Reset playback speed `{default speed}`',
    '~[Ctrl][Alt] <hold down>~  Temporarily show Debug Info window',
    '~^B~                       Toggle Message Board window',
    '~^D~                       Toggle Debug Info window',
    '~^Q~                       Toggle Instrument Macro Editor window',
    '~^G~                       Toggle Arpeggio/Vibrato Macro Editor window',
    '~^M~                       Toggle Macro Browser window',
    '~^F~                       Toggle Song Variables window',
    '~^H~                       Toggle Replace window',
    '~^I~                       Toggle Instrument Control panel',
    '~^E~                       Toggle Instrument Editor window',
    '~^O~                       Toggle Octave Control panel',
    '~^P~                       Toggle Pattern List window',
    '~^R~                       Toggle Remap Instrument window',
    '~^T~                       Toggle Transpose window',
    '~^X~                       Toggle Rearrange Tracks window',
    '~^1..^8~                   Quick-set octave',
    '~[Alt]{Shift} +,- {,}~   Adjust volume level of sound output',
    '~[Alt] C~                  Copy object to clipboard (with selection)',
    '~[Alt] P~                  Paste object from clipboard',
    '~[Alt] M~                  Toggle marking lines ON/OFF',
    '~[Alt] L~                  Toggle Line Marking Setup window',
    '~[Alt] 1..9,0~             Toggle track channel ON/OFF (~Shift~ toggles 1`X`)',
    '~[Alt] S~                  Set all OFF except current track (solo)',
    '~[Alt] R~                  Reset flags on all tracks',
    '~*~                        Reverse ON/OFF on all tracks',
    '~F10~                      Quit program',
    '~F11~                      Toggle typing mode in Pattern Editor (`AT`'#26'`FT`'#26'`ST`)',
    '~F12~                      Toggle `line feed` in Pattern Editor',
    '~[Shift] F12~              Toggle `jump to marked line` in Pattern Editor',

{$IFDEF GO32V2}

    '~[Ctrl][Tab] [...] (*)~    Scroll screen content (if necessary)',
    '',
    '~(*) ,,,'#26',PgUp,PgDown,Home,End~',

{$ELSE}

    '~[Ctrl][Tab] [...] (*)~    Scroll Volume Analyzer section (if necessary)',
    '',
    '~(*) ,,PgUp,PgDown~',
    '',
    '@topic:wav_recorder',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `WAV RECORDER KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '',
    '~[Alt|Ctrl]{Shift} F11~    Toggle WAV recording ON',
    '~[Alt|Ctrl]{Shift} F12~    Toggle WAV recording OFF',
    '',
    'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '³ `FUNCTiONALiTY OF ALTERNATiVE KEYS`                    ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´',
    '³ ~Alt~    Toggle normal recording mode                  ³',
    '³ ~Ctrl~   Toggle ''per track'' recording mode             ³',
    '³ ~Shift~  Toggle Fade in / Fade out sound processing    ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´',
    '³ POSSiBLE COMBiNATiONS: Alt,Ctrl,Alt+Shift,Ctrl+Shift ³',
    'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ',
    '',
    'If ''per track'' recording mode is activated and song playback is stopped,',
    'you can exclude/include corresponding tracks from/to being recorded',
    'with ordinary track selection procedure:',
    '',
    '~[Alt] 1..9,0~             Toggle track channel ON/OFF (~Shift~ toggles 1`X`)',
    '~[Alt] S~                  Set all OFF except current track (solo)',
    '~[Alt] R~                  Reset flags on all tracks',

{$ENDIF}

    '',
    '@topic:pattern_order',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `PATTERN ORDER KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26'~                  Cursor navigation',
    '~PgUp,PgDn~                Move up/down 32 patterns',
    '~Home,End~                 Move to the top/end of pattern order',
    '~Tab,[Shift] Tab~          Move to next/previous entry',
    '~Insert~                   Insert entry',
    '~Delete~                   Delete entry',
    '~Backspace~                Clear entry',
    '~^Space~                   Enter skip mark',
    '~^C~                       Copy entry to clipboard',
    '~^V~                       Paste entry from clipboard',
    '~+,-~                      Adjust entry',
    '~^F2~                      Save module in tiny format',
    '~Enter~                    Switch to Pattern Editor',
    '',
    'ORDER ENTRiES: 0-7F',
    ' 80-FF = jump to pattern order 0-7F',
    '  syntax: order_number[hex](+80h); e.g. "9A" jumps to order 1A',
    '',
    '@topic:pattern_editor',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `PATTERN EDiTOR KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26'~                  Cursor navigation',
    '~PgUp,PgDn~                Move up/down 16 lines',
    '~Home,End~                 Move to the top/end of current pattern',
    '~Tab,[Shift] Tab~          Move to next/previous track',
    '~[Shift] PgDn,PgUp (+,-)~  Move to next/previous pattern',
    '~[Shift] Home,End~         Move fwd./bckwd. to the first/last pattern',
    '~^Home,^End~               Move to the end/top of previous/next pattern',
    '~Space~                    Advance to next row',
    '~^PgUp,^PgDn~              Transpose note or block halftone up/down',
    '~Backspace~                Remove note or clear attributes',
    '~Insert~                   Insert new line (within track only)',
    '~Delete~                   Delete line (within track only)',
    '~[Shift] Insert~           Insert new line',
    '~[Shift] Delete~           Delete line',
    '~[Shift] Enter~            Toggle fixed and regular note',
    '~^K~                       Insert Key-Off',
    '~^C~                       Copy object at cursor to clipboard',
    '~^V~                       Paste object from clipboard',
    '~[Alt][Shift] P~           Paste object from clipboard to more patterns',
    '~^Z~                       Undo last operation (if possible)',
    '~{Ctrl} "[","]"~           Change current instrument',
    '~[Alt] F2~                 Save current pattern to file',
    '~^F2~                      Save module in tiny format',
    '~[Shift] F3~               Quick load recent pattern data',
    '~Enter~                    Switch to Pattern Order',
    '',
    'NOTE SYSTEM: C,C#,D,D#,E,F,F#,G,G#,A,A#,B(H)',
    'VALiD NOTE ENTRiES: C,C-,C#,C1,C-1,C#1...',
    '',
    '@topic:block_operations',
    'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '³ `BLOCK OPERATiONS iN PATTERN EDiTOR`                               ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´',
    '³ Starting to mark a block: ~[Shift] ,,,'#26'~                        ³',
    '³ When at least one row in one track is marked, you can continue   ³',
    '³ marking also with ~PgUp,PgDn,Home,End~ (~Shift~ is still held down!) ³',
    '³ Quick mark: ~[Alt] Q~ (1x-2x-3x) track Ä pattern Ä discard       ³',
    '³ Toggle last marked block: ~[Alt] B~                                ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´',
    '³ ~^B~  Blank block  (Insert blank block to pattern)                 ³',
    '³ ~^C~  Copy block   (Copy block to clipboard)                       ³',
    '³ ~^D~  Delete block (Remove block from pattern)                     ³',
    '³ ~^N~  Nuke block   (Clear block contents)                          ³',
    '³ ~^V~  Paste block  (Paste block from clipboard to pattern) ~(*)~     ³',
    '³ ~^X~  Cut block    (Combine both Copy and Delete operation)        ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´',
    '³ `(*) PASTE BLOCK OPERATiON VARiANTS`                               ³',
    '³ œœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœ                               ³',
    '³ "Paste block" operation has three other functional variants      ³',
    '³ with different key shortcuts for activation:                     ³',
    '³ 1) ~[Alt] V~ toggles "Mix block" operation, when block data        ³',
    '³    from clipboard is applied without overwriting existing data;  ³',
    '³ 2) ~[Shift] ^V~ toggles "Selective paste block" operation,         ³',
    '³    when only block data from clipboard corresponding to current  ³',
    '³    cursor position is being applied (i.e. note, instrument,      ³',
    '³    1st effect or 2nd effect);                                    ³',
    '³ 3) ~[Alt][Shift] V~ toggles "Flipped paste block" operation,       ³',
    '³    when block data from clipboard is applied vertically flipped. ³',
    '³                                                                  ³',
    '³ `MANiPULATiON WiTH FX VOLUME iNFORMATiON`                          ³',
    '³ œœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœœ                          ³',
    '³ When there is block marked, which contains some effect           ³',
    '³ commands carrying volume information, you can increase/decrease  ³',
    '³ their values with ~+~/~-~ keys.                                      ³',
    '³ Effect commands are processed with following priority:           ³',
    '³   1) Set instrument volume (~Cxx~),                                ³',
    '³      Force instrument volume (~=xx~)                               ³',
    '³   2) Set modulator volume (~9xx~)                                  ³',
    '³   3) Set carrier volume (~Ixx~)                                    ³',
    '³   4) Set global volume (~%xx~)                                     ³',
    '³ If effect command with higher priority has been processed,       ³',
    '³ all remaining effect commands with lower priority are skipped.   ³',
    'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ',
    '',
    '@topic:pattern_list',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `PATTERN LiST WiNDOW KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,~                      Cursor navigation',
    '~PgUp,PgDn~                Move up/down 20 patterns',
    '~Home,End~                 Move to the top/end of pattern list',
    '~Space~                    Mark/Unmark pattern',
    '~^Space~                   Unmark all marked patterns',
    '~[Shift] ^Space~           Reverse marks on all patterns',
    '~[Alt] C (^C)~             Copy pattern to clipboard',
    '~[Alt] P (^V)~             Paste pattern from clipboard',
    '~[Shift] ^V~               Paste pattern data from clipboard',
    '~[Alt] V~                  Paste pattern name(s) from clipboard',
    '~^N~                       Nuke current pattern',
    '~[Shift] ^N~               Nuke all marked patterns',
    '~^W~                       Swap marked patterns',
    '~[Shift] ^W~               Swap marked patterns w/o names',
    '~[Shift] Insert~           Insert new pattern',
    '~[Shift] Delete~           Delete current pattern',
    '~Enter~                    Rename pattern / Multiple paste',
    '~[Shift] F3~               Quick load recent pattern data',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:instrument_control',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `iNSTRUMENT CONTROL PANEL KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,~                      Cursor navigation',
    '~PgUp,PgDn~                Move up/down 16 instruments',
    '~Home,End~                 Move to the top/end of instrument list',
    '~Space~                    Mark/Unmark instrument',
    '~Enter~                    Rename instrument',
    '~^C~                       Copy instrument to clipboard',
    '~[Shift] ^C~               Copy instrument also with macro-definitions',
    '~^V~                       Paste instrument(s) from clipboard',
    '~[Shift] ^V~               Paste instrument data from clipboard',
    '~[Alt] V~                  Paste instrument name(s) from clipboard',
    '~^W~                       Swap marked instruments',
    '~[Shift] ^W~               Swap marked instruments w/o names',
    '~Tab~                      Toggle Instrument Editor window',
    '~[Shift] Tab~              Toggle Macro Editor window',
    '~[Shift] O~                Toggle operator mode  / ',
    '~[Shift] M,B,S,T,C,H~      Toggle `m`elodic and percussion (`B`D,`S`D,`T`T,T`C`,`H`H)',
    '~[Shift] F2~               Save instrument w/ fm-register macro to file',
    '~[Alt] F2~                 Save instrument bank to file',
    '~^F2~                      Save instrument bank w/ all macros to file',
    '~[Shift] F3~               Quick load recent instrument data',
    '~MBoard keys <hold down>~  Preview instrument',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:instrument_editor',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `iNSTRUMENT EDiTOR WiNDOW KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~[Alt] <section hotkey>~   Jump to section',
    '~Tab~                      Jump to next setting',
    '~[Shift] Tab~              Jump to previous setting',
    '~PgUp,PgDn (+,-)~          Adjust value',
    '~Space~                    Select item',
    '~^Space~ `(opt.)`            Toggle ADSR preview ON/OFF',
    '~[Ctrl] "[","]"~           Change current instrument',
    '~[Ctrl][Shift] "[","]"~    Change macro speed',
    '~[Alt]{Shift} 1..4,0~      Set operators for instrument preview ~(*)~',
    '~Enter~                    Toggle carrier/modulator/ slot settings',
    '~[Shift] O~                Toggle operator mode  / ',
    '~[Shift] M,B,S,T,C,H~      Toggle `m`elodic and percussion (`B`D,`S`D,`T`T,T`C`,`H`H)',
    '~[Shift] F2~               Save instrument w/ fm-register macro to file',
    '~[Shift] Enter~            Copy values from carrier/modulator slot',
    '~MBoard keys <hold down>~  Preview instrument',
    '~Esc~                      Return to Instrument Control panel',
    '',
    '~(*) [Alt] 1..4~           Set solo operator',
    '    ~[Alt][Shift] 1..4~    Toggle operator ON/OFF',
    '    ~[Alt] 0~              Reset',
    '',
    '@topic:macro_editor',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `iNSTRUMENT MACRO EDiTOR WiNDOW KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~PgUp,PgDown~              Move up/down 16 lines',
    '~Tab (Enter)~              Jump to next field in order',
    '~[Shift] Tab~              Jump to previous field in order',
    '~[Shift] ,~              Synchronous navigation within tables',
    '~[Shift] Home,End~         Move to the start/end of current line in table',
    '~[Ctrl] ,'#26'~               Switch between macro tables',
    '~[Ctrl][Shift] ,'#26'~        Navigate to start/end of macro table',
    '~^PgUp,^PgDown~            Change current arpeggio/vibrato table',
    '~[Ctrl] "[","]"~           Change current instrument',
    '~[Ctrl][Shift] "[","]"~    Change macro speed',
    '~[Alt]{Shift} 1..4,0~      Set operators for instrument preview ~(*)~',
    '~[Alt] ^C~                 Copy values from carrier column',
    '~[Alt] ^M~                 Copy values from modulator column',
    '~^C~                       Copy line in table (whole table respectively)',
    '~[Shift] ^C~               Copy column in table',
    '~^V~                       Paste object from clipboard',
    '~^Enter~                   Paste data from instrument registers',
    '~[Shift] Enter~            Paste data to instrument registers',
    '~[Shift] ^Enter~           Paste data from instrument registers w/ selection',
    '~Backspace~                Clear current item in table',
    '~[Shift] Backspace~        Clear line in table',
    '~+,-~                      Adjust value at cursor / current item in table',
    '~^Home,^End~               Quick-adjust table length',
    '~[Shift] ^Home,^End~       Quick-adjust loop begin position',
    '~[Shift] ^PgUp,^PgDown~    Quick-adjust loop length',
    '~Insert~                   Insert new line in table',
    '~Delete~                   Delete line in table',
    '~^E~                       Toggle envelope restart ON/OFF     ¿',
    '~^N~                       Toggle note retrigger ON/OFF       ö',
    '~^Z~                       Toggle ZERO frequency ON/OFF       ö',
    '~[Alt] ^E,^N,^Z~           Reset all alike flags in table     ö FM-register',
    '~^Backspace~               Toggle corresponding column ON/OFF ø table',
    '~[Alt] S~                  Set all OFF except current column  ö',
    '~[Alt] R~                  Reset flags on all columns         ö',
    '~*~                        Reverse ON/OFF on all columns      Ù',
    '~\~                        Toggle current item (switch types only)',
    '~Space~                    Toggle macro-preview mode',
    '~^Space~                   Toggle Key-Off loop within macro-preview mode',
    '~^F2~                      Save instrument bank w/ all macros to file',
    '~Esc~                      Leave Instrument Macro Editor window',
    '',
    '~(*) [Alt] 1..4~           Set solo operator',
    '    ~[Alt][Shift] 1..4~    Toggle operator ON/OFF',
    '    ~[Alt] 0~              Reset',
    '',
    '@topic:macro_editor_(av)',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `APREGGiO/ViBRATO MACRO EDiTOR WiNDOW KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~PgUp,PgDown~              Move up/down 16 lines',
    '~Tab (Enter)~              Jump to next field in order',
    '~[Shift] Tab~              Jump to previous field in order',
    '~[Shift] ,~              Synchronous navigation within tables',
    '~[Ctrl] ,'#26'~               Switch between macro tables',
    '~[Ctrl][Shift] ,'#26'~        Navigate to start/end of macro table',
    '~^PgUp,^PgDown~            Change current arpeggio/vibrato table',
    '~[Ctrl] "[","]"~           Change current instrument',
    '~[Ctrl][Shift] "[","]"~    Change macro speed',
    '~[Alt]{Shift} 1..4,0~      Set operators for instrument preview ~(*)~',
    '~^C~                       Copy line in table (whole table respectively)',
    '~[Shift] ^C~               Copy column in table',
    '~^V~                       Paste object from clipboard',
    '~Backspace~                Clear current item in table',
    '~[Shift] Backspace~        Clear line in table',
    '~+,-~                      Adjust value at cursor / current item in table',
    '~^Home,^End~               Quick-adjust table length',
    '~[Shift] ^Home,^End~       Quick-adjust loop begin position',
    '~[Shift] ^PgUp,^PgDown~    Quick-adjust loop length',
    '~Space~                    Toggle macro-preview mode',
    '~^Space~                   Toggle Key-Off loop within macro-preview mode',
    '~[Shift] Esc~              Apply table indexes to current instrument',
    '~Esc~                      Leave Arpeggio/Vibrato Macro Editor window',
    '',
    '~(*) [Alt] 1..4~           Set solo operator',
    '    ~[Alt][Shift] 1..4~    Toggle operator ON/OFF',
    '    ~[Alt] 0~              Reset',
    '',
    '@topic:macro_browser',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `iNSTRUMENT MACRO BROWSER KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~[Shift] ,~              Move up/down in macro table',
    '~[Shift] ,'#26'~              Move left/right in macro table',
    '~[Shift] PgUp,PgDown~      Move page up/down in macro table',
    '~[Shift] Home,End~         Move to the start/end of macro table',
    '~[Ctrl] Home,End~          Move to the start/end of line in macro table',
    '~Enter~                    Load selected macro data',
    '~^Enter~ `(opt.)`            Load all macro data from bank',
    '~[Ctrl][Shift] "[","]"~    Change macro speed',
    '~MBoard keys <hold down>~  Preview instrument with selected macro data',
    '~Tab~ `(opt.)`               Switch to Arpeggio/Vibrato Macro Browser window',
    '~Esc~                      Leave Instrument Macro Browser window',
    '',
    '@topic:macro_browser_av',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `ARPEGGiO/ViBRATO MACRO BROWSER KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,PgUp,PgDown,~',
    '~Home,End~                 Cursor navigation',
    '~[Shift] ,'#26'~              Move left/right in arpeggio table      ¿',
    '~[Shift] PgUp,PgDown~      Move page left/right in arpeggio table ö',
    '~[Ctrl] ,'#26'~               Move left/right in vibrato table       ö refer to',
    '~^PgUp,^PgDown~            Move page left/right in vibrato table  ø ~(*)~',
    '~[Shift]{Alt} Space~       Toggle arpeggio table selection ~(**)~   ö',
    '~[Ctrl] {Alt} Space~       Toggle vibrato table selection  ~(**)~   Ù',
    '~[Shift] Home,End~         Navigate to start/end of arpeggio table',
    '~^Home,^End~               Navigate to start/end of vibrato table',
    '~[Ctrl] "[","]"~           Change current instrument',
    '~[Ctrl][Shift] "[","]"~    Change macro speed',
    '~MBoard keys <hold down>~  Preview instrument with selected macro data',
    '~Enter~                    Load selected macro data',
    '~^Enter~ `(opt.)`            Load all macro data from bank',
    '~Esc~                      Leave Arpeggio/Vibrato Macro Browser window',
    '',
    '~(*)~  Key combination with ~Ctrl+Shift~ applies action to both tables',
    '~(**)~ ~Alt~ key invokes no arpeggio resp. vibrato table (index value reset)',
    '',
    '@topic:debug_info',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `DEBUG iNFO WiNDOW KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,PgUp,PgDown,~',
    '~Home,End~                 Change current track',
    '~Tab~                      Toggle details',
    '~Backspace~                Toggle pattern repeat',
    '~Space~                    Enter Debug mode / Proceed step',
    '~^Space~                   Exit Debug mode',
    '~[Ctrl] Home,End~          Skip to previous/next pattern',
    '~+,-~                      Same as above; play pattern from start',
    '~^Enter~                   Play next pattern according to order',
    '~[Ctrl] ,'#26'~               Rewind/Fast-Forward current pattern',
    '~[Alt] 1..9,0~             Toggle track channel ON/OFF (~Shift~ toggles 1`X`)',
    '~[Alt] S~                  Set all OFF except current track (solo)',
    '~[Alt] R~                  Reset flags on all tracks',
    '~*~                        Reverse ON/OFF on all tracks',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:remap_dialog',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `REMAP iNSTRUMENT WiNDOW KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~PgUp,PgDown~              Move up/down 16 instruments',
    '~Tab~                      Jump to next selection',
    '~[Shift] Tab~              Jump to previous selection',
    '~MBoard keys <hold down>~  Preview instrument',
    '~Enter~                    Remap',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:rearrange_dialog',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `REARRANGE TRACKS WiNDOW KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~Tab~                      Jump to next selection',
    '~[Shift] Tab~              Jump to previous selection',
    '~^PgUp,^PgDown~            Shift track at cursor up/down in the track list',
    '~[Shift] ^PgUp,^PgDown~    Rotate track list from cursor upside/downside',
    '~Enter~                    Rearrange',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:replace_dialog',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `REPLACE WiNDOW KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26',Home,End~         Cursor navigation',
    '~Tab~                      Jump to next selection',
    '~[Shift] Tab~              Jump to previous selection',
    '~^K~                       Insert Key-Off in note column',
    '~^N~                       Mark "new" field to clear found item',
    '~^W~                       Swap "to find" and "replace" mask content',
    '~Delete,Backspace~         Delete current/previous character',
    '~^Backspace~               Delete "to find" or "replace" mask content',
    '~[Shift] ^Backspace~       Delete content of both masks',
    '~Enter~                    Replace',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:song_variables',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `SONG VARiABLES WiNDOW KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26'~                  Cursor navigation',
    '~[Alt] <section hotkey>~   Jump to section',
    '~Tab (Enter)~              Jump to next variable field',
    '~[Shift] Tab~              Jump to previous variable field',
    '~Space~                    Select item',
    '~^Enter~                   Setup rows per beat for BPM calculation',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:file_browser',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `FiLE BROWSER KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26'~',
        '~PgUp,PgDown,Home,End~     Cursor navigation',
{$IFDEF UNIX}
    '~/~                        Navigate to root directory',
{$ELSE}
    '~\~                        Navigate to drive root',
{$ENDIF}
    '~Backspace~                Navigate to parent directory',
    '~[Shift] Backspace~        Navigate to program home directory',
    '~MBoard keys <hold down>~  Preview instrument (instrument files only)',
    '~Enter~                    Choose file under cursor / read instrument bank',
    '~Esc~                      Leave without choosing file',
    '',
    '@topic:message_board',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `MESSAGE BOARD WiNDOW KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,,,'#26',^PgUp,^PgDown,~',
    '~Home,End,^Home,^End~      Cursor navigation',
    '~PgUp,PgDown~              Move backwards/forwards over text',
    '~[Ctrl] ,'#26'~               Move word left/right',
    '~Backspace,Delete~         Delete character left/right',
    '~^Backspace,^T~            Delete word left/right',
    '~^K~                       Delete characters to end',
    '~^Y~                       Delete current line',
    '~Tab~                      Indent current line',
    '~^Space~                   Insert row for text at cursor',
    '~[Shift] ^Backspace~       Delete row for text at cursor',
    '~Insert~                   Toggle input and overwrite mode',
    '~Enter~                    Wrap line of text',
    '~Esc~                      Return to Pattern Editor or Pattern Order',
    '',
    '@topic:input_field',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `iNPUT FiELD KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~,'#26',Home,End~             Cursor navigation',
    '~[Ctrl] ,'#26'~               Move word left/right',
    '~Backspace,Delete~         Delete character left/right',
    '~^Backspace,^T~            Delete word left/right',
    '~^K~                       Delete characters to end',
    '~^Y~                       Delete string',
    '~Insert~                   Toggle input and overwrite mode',
    '~+,-~                      Increment/decrement decimal or hexadecimal value',
    '',
    '@topic:midiboard',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `MiDiBOARD KEY REFERENCE` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '',
    '     C#  D#      F#  G#  A#      C#  D#      F#  G#  A#      C#  D#',
    '',
    '  ŞÛÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛÛ',
    '  ŞÛÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛÛ',
    '  ŞÛÛ ~S~ŞÛ ~D~ŞÛÛŞÛÛ ~G~ŞÛ ~H~ŞÛ ~J~ŞÛÛŞÛÛ ~2~ŞÛ ~3~ŞÛÛŞÛÛ ~5~ŞÛ ~6~ŞÛ ~7~ŞÛÛŞÛÛ ~9~ŞÛ ~0~ŞÛÛ',
    '  ŞÛÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛÛ',
    '  ŞÛÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛ  ŞÛÛŞÛÛ  ŞÛ  ŞÛÛ',
    '  ŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛ',
    '  ŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛ',
    '  Şİ~Z~ŞŞİ~X~ŞŞİ~C~ŞŞİ~V~ŞŞİ~B~ŞŞİ~N~ŞŞİ~M~ŞŞİ~Q~ŞŞİ~W~ŞŞİ~E~ŞŞİ~R~ŞŞİ~T~ŞŞİ~Y~ŞŞİ~U~ŞŞİ~I~ŞŞİ~O~ŞŞİ~P~Ş',
    '  ŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛ',
    '  ŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛŞÛÛÛ',
    '',
    '    C   D   E   F   G   A   B   C   D   E   F   G   A   B   C   D   E',
    '',
    'ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '³ `WHiLE TRACKER iS iN MiDiBOARD MODE`                                    ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ´',
    '³ ~MBoard key~ copies note in note field, plays it, and advances song     ³',
    '³ to next row. If used with ~Left-Shift~ key and line marking toggled ON, ³',
    '³ it advances song to next highlighted row.                             ³',
    '³ If used with ~Right-Shift~ key, it makes a fixed note.                  ³',
    '³ ~Space~ plays row and advances song by one row.                         ³',
    '³ ~@@` inserts Key-Off, releases playing note and advances to next row.    ³',
    'ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ',
    '',
    '@topic:instrument_registers',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `iNSTRUMENT REGiSTERS` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '~Attack rate~',
    'Indicates how fast the sound volume goes to maximum.',
    '1=slow, 15=fast. 0 means no attack phase.',
    '',
    '~Decay rate~',
    'Indicates how fast the sound goes from maximum level to sustain level.',
    '1=slow, 15=fast. 0 means no decay phase.',
    '',
    '~Sustain level~',
    'Indicates the sustain level.',
    '1=loudest, 15=softest. 0 means no sustain phase.',
    '',
    '~Release rate~',
    'Indicates how fast the sound goes from sustain level to zero level.',
    '1=slow, 15=fast. 0 means no release phase.',
    '',
    '~Output level~',
    'Ranges from 0 to 63, indicates the attenuation according to the',
    'envelope generator output. In Additive synthesis, varying',
    'the output level of any operator varies the volume of its corresponding',
    'channel. In FM synthesis, varying the output level of carrier varies',
    'the volume of its corresponding channel, but varying the output of',
    'the modulator will change the frequency spectrum produced by the carrier.',
    '',
    '~Waveform select~',
    'Specifies the output waveform type.',
    'The first is closest to pure sine wave, the last is most distorted.',
    '',
    '`[0] SiNE`',
    '',
    '     ',
    '     ³',
    '     ³     __                      __',
    '     ³   /    \                  /    \',
    '     ³ /        \              /        \',
    '    ÄÅÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄ',
    '     ³             \        /              \        /',
    '     ³               \    /                  \    /',
    '     ³                                       ',
    '     ³          1/2          1          3/2          2  pi',
    '',
    '',
    '`[1] HALF-SiNE`',
    '',
    '     ',
    '     ³',
    '     ³     __                      __',
    '     ³   /    \                  /    \',
    '     ³ /        \              /        \',
    '    ÄÅÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄ',
    '     ³',
    '     ³          1/2          1          3/2          2  pi',
    '     ³',
    '     ³',
    '',
    '',
    '`[2] ABS-SiNE`',
    '',
    '     ',
    '     ³',
    '     ³     __         __           __         __',
    '     ³   /    \     /    \       /    \     /    \',
    '     ³ /        \ /        \   /        \ /        \',
    '    ÄÅÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄ',
    '     ³',
    '     ³          1/2          1          3/2          2  pi',
    '     ³',
    '     ³',
    '',
    '',
    '`[3] PULSE-SiNE`',
    '',
    '     ',
    '     ³',
    '     ³    _           _           _           _',
    '     ³  /  |        /  |        /  |        /  |',
    '     ³/    |      /    |      /    |      /    |',
    '    ÄÅÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄ',
    '     ³',
    '     ³    1/4    1/2   3/4   1    5/4   3/2   7/4    2  pi',
    '     ³',
    '     ³',
    '',
    '',
    '`[4] SiNE, EVEN PERiODS ONLY (EPO)`',
    '',
    '     ',
    '     ³',
    '     ³',
    '     ³ /\                     /\',
    '     ³/   \                   /   \',
    '    ÄÅÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄ',
    '     ³      \   /                   \   /',
    '     ³       \_/                     \_/',
    '     ³',
    '     ³    1/4   1/2   3/4    1    5/4   3/2   7/4    2  pi',
    '',
    '',
    '`[5] ABS-SiNE, EVEN PERiODS ONLY (EPO)`',
    '',
    '     ',
    '     ³',
    '     ³',
    '     ³ /\   /\               /\   /\',
    '     ³/   \ /   \             /   \ /   \',
    '    ÄÅÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄ',
    '     ³',
    '     ³    1/4   1/2   3/4    1    5/4   3/2   7/4    2  pi',
    '     ³',
    '     ³',
    '',
    '',
    '`[6] SQUARE`',
    '',
    '     ',
    '     ³',
    '     ³',
    '     Ã-----------¿           Ú-----------¿',
    '     ñ           ñ           ñ           ñ',
    '    ÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄ',
    '     ³           ñ           ñ           ñ           ñ',
    '     ³           À-----------Ù           À-----------Ù',
    '     ³',
    '     ³          1/2          1          3/2          2  pi',
    '',
    '',
    '`[7] DERiVED SQUARE`',
    '',
    '     ',
    '     ³',
    '     ³',
    '     ñ\__                    ñ\__',
    '     ñ   ÄÄÄ__            ñ   ÄÄ__',
    '    ÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÅÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄ',
    '     ³            ÄÄÄ___   ñ            ÄÄ____   ñ',
    '     ³                    \ñ                    \ñ',
    '     ³',
    '     ³          1/2          1          3/2          2  pi',
    '',
    '',
    '~Key scaling level (KSL)~',
    'When set, makes the sound softer at higher frequencies.',
    'With musical instruments, volume decreases as pitch increases.',
    'Level key scaling values are used to simulate this effect.',
    'If any (not zero), the diminishing factor can be 1.5 dB/octave,',
    '3.0 dB/octave, or 6.0 dB/octave.',
    '',
    '~Panning~',
    'Gives you ability of controlling output, going to left or right channel,',
    'standing in the middle respectively.',
    'The parameter corresponds either with carrier and modulator, therefore',
    'it is listed only once (within the carrier slot).',
    '',
    '~Fine-tune~',
    'This is not a hardware parameter.',
    'Ranges from -127 to 127, it indicates the number of frequency units',
    'shifted up or down for any note playing with the corresponding instrument.',
    'The parameter corresponds either with carrier and modulator, therefore',
    'it is listed only once (within the carrier slot).',
    '',
    '~Feedback strength~',
    'Ranges from 0 to 7, it indicates the modulation depth',
    'for the modulator slot FM feedback.',
    '',
    'ÚÄÄÄÄÄÄÄÄÄÄÄÄÒÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄ¿',
    '³ `FEEDBACK`   º `[0]` ³ `[1]` ³ `[2]` ³ `[3]` ³ `[4]` ³ `[5]` ³ `[6]` ³ `[7]` ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄ×ÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄÅÄÄÄÄÄ´',
    '³ `MODULATiON` º  0  ³1/16 ³ 1/8 ³ 1/4 ³ 1/2 ³  1  ³  2  ³  4  ³',
    'ÀÄÄÄÄÄÄÄÄÄÄÄÄĞÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÙ',
    '',
    'The parameter corresponds either with carrier and modulator, therefore',
    'it is listed only once (within the carrier slot).',
    '',
    '~Connection type~',
    'Frequency modulation means that the modulator slot modulates the carrier.',
    'Additive synthesis means that both slots produce sound on their own.',
    '',
    '`[FM] FREQUENCY MODULATiON`',
    '',
    '',
    '        ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '        ³            ³',
    '            ÉÍÍÍÍ»  ³         ÉÍÍÍÍ»',
    ' P1 ÄÄ(+)ÄÄº MO ÇÄÄÁÄÄ(+)ÄÄº CA ÇÄÄ OUT',
    '             ÈÍÍÍÍ¼           ÈÍÍÍÍ¼',
    '                          ³',
    '',
    '                          P2',
    '',
    '`[ADDiTiVE SYNTHESiS] AM`',
    '',
    '',
    '        ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '        ³            ³',
    '            ÉÍÍÍÍ»  ³',
    ' P1 ÄÄ(+)ÄÄº MO ÇÄÄÁÄÄÄÄ¿',
    '             ÈÍÍÍÍ¼       ³',
    '                          ',
    '                         (+)ÄÄ OUT',
    '                          ',
    '             ÉÍÍÍÍ»       ³',
    ' P2 ÄÄÄÄÄÄÄÄº CA ÇÄÄÄÄÄÄÄÙ',
    '             ÈÍÍÍÍ¼',
    '',
    'The parameter corresponds either with carrier and modulator, therefore',
    'it is listed only once (within the carrier slot).',
    'This parameter is also very important when making 4-op instruments,',
    'because the combination of two instrument connections specifies',
    'the connection of the 4-op instrument as shown below:',
    '',
    'ÚÄÄÄÄÄÄÄÄÄÄÄÄÒÄÄÄÄÂÄÄÄÄÂÄÄÄÄÂÄÄÄÄ¿',
    '³ `SLOT`       º M1 ³ C1 ³ M2 ³ C2 ³',
    'ÃÄÄÄÄÄÄÄÄÄÄÄÄ×ÄÄÄÄÅÄÄÄÄÅÄÄÄÄÅÄÄÄÄ´',
    '³ `OPERATOR`   º 1  ³ 2  ³ 3  ³ 4  ³',
    'ÀÄÄÄÄÄÄÄÄÄÄÄÄĞÄÄÄÄÁÄÄÄÄÁÄÄÄÄÁÄÄÄÄÙ',
    '',
    '',
    '`[FM/FM]`',
    '',
    '        ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '        ³            ³',
    '            ÉÍÍÍÍ»  ³         ÉÍÍÍÍ»         ÉÍÍÍÍ»         ÉÍÍÍÍ»',
    ' P1 ÄÄ(+)ÄÄº M1 ÇÄÄÁÄÄ(+)ÄÄº C1 ÇÄÄ(+)ÄÄº M2 ÇÄÄ(+)ÄÄº C2 ÇÄÄ OUT',
    '             ÈÍÍÍÍ¼           ÈÍÍÍÍ¼        ÈÍÍÍÍ¼        ÈÍÍÍÍ¼',
    '                          ³              ³              ³',
    '',
    '                          P2             P3             P4',
    '',
    '`[FM/AM]` ~(*)~',
    '',
    '        ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '        ³            ³',
    '            ÉÍÍÍÍ»  ³         ÉÍÍÍÍ»',
    ' P1 ÄÄ(+)ÄÄº M1 ÇÄÄÁÄÄ(+)ÄÄº C1 ÇÄÄÄÄ¿',
    '             ÈÍÍÍÍ¼           ÈÍÍÍÍ¼    ³',
    '                          ³              ³',
    '                                         ',
    '                          P2            (+)ÄÄ OUT',
    '                                         ',
    '                                         ³',
    '             ÉÍÍÍÍ»            ÉÍÍÍÍ»    ³',
    ' P3 ÄÄÄÄÄÄÄÄº M2 ÇÄÄÄÄÄ(+)ÄÄº C2 ÇÄÄÄÄÙ',
    '             ÈÍÍÍÍ¼           ÈÍÍÍÍ¼',
    '                          ³',
    '',
    '                          P4',
    '',
    '`[AM/FM]` ~(*)~',
    '',
    '        ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '        ³            ³',
    '            ÉÍÍÍÍ»  ³',
    ' P1 ÄÄ(+)ÄÄº M1 ÇÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '             ÈÍÍÍÍ¼                                     ³',
    '                                                        ³',
    '                                                        ³',
    '                                                        ³',
    '             ÉÍÍÍÍ»            ÉÍÍÍÍ»         ÉÍÍÍÍ»    ',
    ' P2 ÄÄÄÄÄÄÄÄº C1 ÇÄÄÄÄÄ(+)ÄÄº M2 ÇÄÄ(+)ÄÄº C2 ÇÄÄ(+)ÄÄ OUT',
    '             ÈÍÍÍÍ¼           ÈÍÍÍÍ¼        ÈÍÍÍÍ¼',
    '                          ³              ³',
    '',
    '                          P3             P4',
    '',
    '`[AM/AM]`',
    '',
    '        ÚÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '        ³            ³',
    '            ÉÍÍÍÍ»  ³',
    ' P1 ÄÄ(+)ÄÄº M1 ÇÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '             ÈÍÍÍÍ¼                      ³',
    '                                         ³',
    '                                         ³',
    '                                         ³',
    '             ÉÍÍÍÍ»            ÉÍÍÍÍ»    ',
    ' P2 ÄÄÄÄÄÄÄÄÄº C1 ÇÄÄÄÄÄ(+)ÄÄº M2 ÇÄÄ(+)ÄÄ OUT',
    '             ÈÍÍÍÍ¼           ÈÍÍÍÍ¼    ',
    '                          ³              ³',
    '                                         ³',
    '                          P3             ³',
    '             ÉÍÍÍÍ»                      ³',
    ' P4 ÄÄÄÄÄÄÄÄº C2 ÇÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ',
    '             ÈÍÍÍÍ¼',
    '',
    '',
    '~(*)~ `REMARK ABOUT  CONNECTiONS FM/AM AND AM/FM`',
    'Please note, that since order of  channels is (hardware-wise) õ and ô,',
    'these two instrument connections are swapped.',
    'The preview diagrams in the Instrument Editor window show actual order,',
    'but here this information is kept in conformity with the official',
    'Yamaha YMF262 data specification to prevent further confusion.',
    '',
    '',
    '~Tremolo (Amplitude modulation)~',
    'When set, turns tremolo (volume vibrato) ON for the corresponding slot.',
    'The repetition rate is 3.7®, the depth is optional (1dB/4.8dB).',
    '',
    '~Vibrato~',
    'When set, turns frequency vibrato ON for the corresponding slot.',
    'The repetition rate is 6.1®, the depth is optional (7%/14%).',
    '',
    '~Key scale rate (KSR)~',
    'When set, makes the sound shorter at higher frequencies.',
    'With normal musical instruments, the attack and decay rate becomes faster',
    'as the pitch increases. The key scale rate controls simulation of',
    'this effect. An offset (rof) is added to the individual attack, decay,',
    'and release rates depending on the following formula:',
    '',
    'actual_rate = (rate  4) + rof',
    '',
    'The "rof" values for corresponding "rate" value and KSR state are shown',
    'in the following table:',
    '',
    'ÚÄÄÄÄÄÄÄÄÒÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄÂÄÄÄ¿',
    '³ `%rate%` º 0 ³ 1 ³ 2 ³ 3 ³ 4 ³ 5 ³ 6 ³ 7 ³ 8 ³ 9 ³ A ³ B ³ C ³ D ³ E ³ F ³',
    'ÆÍÍÍÍÍÍÍÍÎÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍØÍÍÍµ',
    '³ `[OFF]`  º 0 ³ 0 ³ 0 ³ 0 ³ 1 ³ 1 ³ 1 ³ 1 ³ 2 ³ 2 ³ 2 ³ 2 ³ 3 ³ 3 ³ 3 ³ 3 ³',
    'ÃÄÄÄÄÄÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄÅÄÄÄ´',
    '³ `[ON]`   º 0 ³ 1 ³ 2 ³ 3 ³ 4 ³ 5 ³ 6 ³ 7 ³ 8 ³ 9 ³ A ³ B ³ C ³ D ³ E ³ F ³',
    'ÀÄÄÄÄÄÄÄÄĞÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÁÄÄÄÙ',
    '',
    '~Sustain (Envelope generator type)~',
    'When set, the sustain level of the voice is maintained until released.',
    'When clear, the sound begins to decay immediately after hitting',
    'the sustain phase.',
    '',
    '`[OFF]`                /\  DR',
    '                   /    \',
    '                 /     ...\...SL',
    '           AR  /            \',
    '             /                \  RR',
    '           /                    \',
    '      _ _/                        \_ _ _',
    '         .',
    '         :',
    '         ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ',
    '      ÄÄÄÙ     KEY ON',
    '',
    '',
    '`[ON]`                 /\  DR',
    '                   /    \      SL',
    '                 /        \ _ _ _ _ _',
    '           AR  /                      \',
    '             /                       :  \  RR',
    '           /                         :    \',
    '      _ _/                           :      \_ _ _',
    '         .                           :',
    '         :                           :',
    '         ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿  KEY OFF',
    '      ÄÄÄÙ     KEY ON                ÀÄÄÄÄÄÄÄÄÄÄÄÄ',
    '',
    '',
    '~Frequency data multiplier~',
    'Sets the multiplier for the frequency data specified by block and',
    'F-number. This multiplier is applied to the FM carrier or modulation',
    'frequencies. The multiplication factor and corresonding harmonic types are',
    'shown in the following table:',
    '',
    'ÚÄÄÄÄÄÄÄÂÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿',
    '³ `MULT.` ³  ``  ³ `HARMONiC`                           ³',
    'ÆÍÍÍÍÍÍÍØÍÍÍÍÍØÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍµ',
    '³  `[0]`  ³ 0.5 ³ 1 octave below                     ³',
    '³  `[1]`  ³  1  ³ at the voice''s specified frequency ³',
    '³  `[2]`  ³  2  ³ 1 octave above                     ³',
    '³  `[3]`  ³  3  ³ 1 octave and a 5th above           ³',
    '³  `[4]`  ³  4  ³ 2 octaves above                    ³',
    '³  `[5]`  ³  5  ³ 2 octaves and a Major 3rd above    ³',
    '³  `[6]`  ³  6  ³ 2 octaves and a 5th above          ³',
    '³  `[7]`  ³  7  ³ 2 octaves and a Minor 7th above    ³',
    '³  `[8]`  ³  8  ³ 3 octaves above                    ³',
    '³  `[9]`  ³  9  ³ 3 octaves and a Major 2nd above    ³',
    '³  `[A]`  ³ 10  ³ 3 octaves and a Major 3rd above    ³',
    '³  `[B]`  ³ 10  ³             ...                    ³',
    '³  `[C]`  ³ 12  ³ 3 octaves and a 5th above          ³',
    '³  `[D]`  ³ 12  ³             ...                    ³',
    '³  `[E]`  ³ 15  ³ 3 octaves and a Major 7th above    ³',
    '³  `[F]`  ³ 15  ³             ...                    ³',
    'ÀÄÄÄÄÄÄÄÁÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ',
    '',
    '@topic:effects_page1',
    'ÍËÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍËÍ',
    ' º `SUPPORTED EFFECTS` º',
    'ÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÊÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ',
    '`0`xy ÄÄ ARPEGGiO                   xy=1st_tone|2nd_tone    [1-F]',
    '`1`xx ÄÄ FREQUENCY SLiDE UP         xx=speed_of_slide       [1-FF]',
    '`2`xx ÄÄ FREQUENCY SLiDE DOWN       xx=speed_of_slide       [1-FF]',
    '`3`xx ÄÄ TONE PORTAMENTO            xx=speed_of_slide       [1-FF] ~C~',
    '`4`xy ÄÄ ViBRATO                    xy=speed|depth          [1-F]  ~C~',
    '`5`xy ÄÄ ~3xx~ & VOLUME SLiDE         xy=up_speed|down_speed  [1-F]  ~C~',
    '`6`xy ÄÄ ~4xy~ & VOLUME SLiDE         xy=up_speed|down_speed  [1-F]  ~C~',
    '`7`xx ÄÄ FiNE FREQUENCY SLiDE UP    xx=speed_of_slide       [1-FF]',
    '`8`xx ÄÄ FiNE FREQUENCY SLiDE DOWN  xx=speed_of_slide       [1-FF]',
    '`9`xx ÄÄ SET MODULATOR VOLUME       xx=volume_level         [0-3F]',
    '`A`xy ÄÄ VOLUME SLiDE               xy=up_speed|down_speed  [1-F]',
    '`B`xx ÄÄ POSiTiON JUMP              xx=position_in_order    [0-7F]',
    '`C`xx ÄÄ SET iNSTRUMENT VOLUME      xx=volume_level         [0-3F]',
    '`D`xx ÄÄ PATTERN BREAK              xx=line_in_next_pattern [0-FF]',
    '`E`xx ÄÄ SET TEMPO                  xx=bpm_in_®             [1-FF]',
    '`F`xx ÄÄ SET SPEED                  xx=frames_per_row       [1-FF]',
    '`G`xy ÄÄ ~3xx~ & FiNE VOLUME SLiDE    xy=up_speed|down_speed  [1-F]  ~C~',
    '`H`xy ÄÄ ~4xy~ & FiNE VOLUME SLiDE    xy=up_speed|down_speed  [1-F]  ~C~',
    '`I`xx ÄÄ SET CARRiER VOLUME         xx=volume_level         [0-3F]',
    '`J`xy ÄÄ SET WAVEFORM               xy=carrier|modulator    [0-7,F=NiL]',
    '@topic:effects_page2',
    '`K`xy ÄÄ FiNE VOLUME SLiDE          xy=up_speed|down_speed  [1-F]',
    '`L`xx ÄÄ RETRiG NOTE                xx=interval             [1-FF]',
    '`M`xy ÄÄ TREMOLO                    xy=speed|depth          [1-F]  ~C~',
    '`N`xy ÄÄ TREMOR                     xy=on_time|off_time     [1-F]',
    '`O`xy ÄÄ ~0xy~ & VOLUME SLiDE         xy=up_speed|down_speed  [1-F]  ~C~',
    '`P`xy ÄÄ ~0xy~ & FiNE VOLUME SLiDE    xy=up_speed|down_speed  [1-F]  ~C~',
    '`Q`xy ÄÄ MULTi RETRiG NOTE          xy=interval|vol_change  [1-F]',
    '',
    '`Q`x?  `0` = None         `8` = Unused',
    '     `1` = -1           `9` = +1',
    '     `2` = -2           `A` = +2',
    '     `3` = -4           `B` = +4',
    '     `4` = -8           `C` = +8',
    '     `5` = -16          `D` = +16',
    '     `6` = 2/3         `E` = 3/2',
    '     `7` = 1/2         `F` = 2',
    '',
    '`R`xy ÄÄ ~1xx~ ¿                   ¿',
    '`S`xy ÄÄ ~2xx~ ö &                 ö',
    '`T`xy ÄÄ ~7xx~ ø VOLUME SLiDE      ö',
    '`U`xy ÄÄ ~8xx~ Ù                   ö',
    '`V`xy ÄÄ ~1xx~ ¿                   ø  xy=up_speed|down_speed  [1-F]  ~C~',
    '`W`xy ÄÄ ~2xx~ ö &                 ö',
    '`X`xy ÄÄ ~7xx~ ø FiNE VOLUME SLiDE ö',
    '`Y`xy ÄÄ ~8xx~ Ù                   Ù',
    '',
    '@topic:effects_page3',
    '`Z`?? `0`x SET TREMOLO DEPTH          x=1dB/4.8dB             [0-1]  ~I~',
    '    `1`x SET ViBRATO DEPTH          x=7%/14%                [0-1]  ~I~',
    '    `2`x SET ATTACK RATE   ¿        x=attack_rate           [0-F]  ~I~',
    '    `3`x SET DECAY RATE    ö MOD.   x=decay_rate            [0-F]  ~I~',
    '    `4`x SET SUSTAiN LEVEL ø        x=sustain_level         [0-F]  ~I~',
    '    `5`x SET RELEASE RATE  Ù        x=release_rate          [0-F]  ~I~',
    '    `6`x SET ATTACK RATE   ¿        x=attack_rate           [0-F]  ~I~',
    '    `7`x SET DECAY RATE    ö CAR.   x=decay_rate            [0-F]  ~I~',
    '    `8`x SET SUSTAiN LEVEL ø        x=sustain_level         [0-F]  ~I~',
    '    `9`x SET RELEASE RATE  Ù        x=release_rate          [0-F]  ~I~',
    '    `A`x SET FEEDBACK STRENGTH      x=feedback_strength     [0-7]  ~I~',
    '    `B`x SET PANNiNG POSiTiON       x=panning_position      [0-2]  ~I~',
    '    `C`x PATTERN LOOP               x=parameter             [0-F]',
    '    `D`x RECURSiVE PATTERN LOOP     x=parameter             [0-F]',
    '    `E`x EXTENDED COMMANDS (1)',
    '    `F`x EXTENDED COMMANDS (2)',
    '',
    '`ZB`?  `0` = Center',
    '     `1` = Left',
    '     `2` = Right',
    '`ZC`?',
    '`ZD`?  `0` = Set loopback point',
    '     x = Loop ~x~ times',
    '',
    '@topic:effects_page4',
    '`ZE`?  `0`/`1` DiSABLE/ENABLE MACRO KEY-OFF LOOP',
    '     `2`/`3` DiSABLE/ENABLE RESTART ENVELOPE WiTH TONE PORTAMENTO',
    '     `4`   PERFORM RESTART ENVELOPE',
    '     `5`/`6` DiSABLE/ENABLE '#4#3' TRACK VOLUME LOCK',
    '     `7`   PERFORM ~BPM SLiDE~ USiNG `~>~`~xx~ AND `~<~`~xx~ COMMANDS',
    '',
    '`ZF`?  `0`   RELEASE SUSTAiNiNG SOUND',
    '     `1`   RESET iNSTRUMENT VOLUME',
    '     `2`/`3` LOCK/UNLOCK TRACK VOLUME',
    '     `4`/`5` LOCK/UNLOCK VOLUME PEAK',
    '     `6`   TOGGLE MODULATOR VOLUME SLiDES',
    '     `7`   TOGGLE CARRiER VOLUME SLiDES',
    '     `8`   TOGGLE DEFAULT VOLUME SLiDES',
    '     `9`/`A` LOCK/UNLOCK TRACK PANNiNG',
    '     `B`   ViBRATO OFF',
    '     `C`   TREMOLO OFF',
    '     `D`   FORCE FiNE ViBRATO',
    '         FORCE FiNE GLOBAL FREQ. SLiDE',
    '     `E`   FORCE FiNE TREMOLO',
    '         FORCE EXTRA FiNE GLOBAL FREQ. SLiDE',
    '     `F`   FORCE NO RESTART FOR MACRO TABLES',
    '',
    '@topic:effects_page5',
    '`#`?? `0`x SET CONNECTiON TYPE        x=FM/AM                 [0-1]  ~I~',
    '    `1`x SET MULTiPLiER ¿           x=multiplier            [0-F]  ~I~',
    '    `2`x SET KSL        ö           x=scaling_level         [0-3]  ~I~',
    '    `3`x SET TREMOLO    ö MOD.      x=off/on                [0-1]  ~I~',
    '    `4`x SET ViBRATO    ø           x=off/on                [0-1]  ~I~',
    '    `5`x SET KSR        ö           x=off/on                [0-1]  ~I~',
    '    `6`x SET SUSTAiN    Ù           x=off/on                [0-1]  ~I~',
    '    `7`x SET MULTiPLiER ¿           x=multiplier            [0-F]  ~I~',
    '    `8`x SET KSL        ö           x=scaling_level         [0-3]  ~I~',
    '    `9`x SET TREMOLO    ö CAR.      x=off/on                [0-1]  ~I~',
    '    `A`x SET ViBRATO    ø           x=off/on                [0-1]  ~I~',
    '    `B`x SET KSR        ö           x=off/on                [0-1]  ~I~',
    '    `C`x SET SUSTAiN    Ù           x=off/on                [0-1]  ~I~',
    '',
    '@topic:effects_page6',
    '`&`?? `0`x PATTERN DELAY (FRAMES)     x=interval              [1-F]',
    '    `1`x PATTERN DELAY (ROWS)       x=interval              [1-F]',
    '    `2`x NOTE DELAY                 x=interval              [1-F]',
    '    `3`x NOTE CUT                   x=interval              [1-F]',
    '    `4`x FiNE-TUNE UP               x=freq_shift            [1-F]',
    '    `5`x FiNE-TUNE DOWN             x=freq_shift            [1-F]',
    '    `6`x GLOBAL VOLUME SLiDE UP     x=speed_of_slide        [1-F]',
    '    `7`x GLOBAL VOLUME SLiDE DOWN   x=speed_of_slide        [1-F]',
    '    `8`x FiNE ~&6x~                   x=speed_of_slide        [1-F]',
    '    `9`x FiNE ~&7x~                   x=speed_of_slide        [1-F]',
    '    `A`x EXTRA FiNE ~&6x~             x=speed_of_slide        [1-F]',
    '    `B`x EXTRA FiNE ~&7x~             x=speed_of_slide        [1-F]',
    '    `C`x EXTRA FiNE VSLiDE UP       x=speed_of_slide        [1-F]',
    '    `D`x EXTRA FiNE VSLiDE DOWN     x=speed_of_slide        [1-F]',
    '    `E`x EXTRA FiNE FSLiDE UP       x=speed_of_slide        [1-F]',
    '    `F`x EXTRA FiNE FSLiDE DOWN     x=speed_of_slide        [1-F]',
    '',
    '@topic:effects_page7',
    '`$`xy ÄÄ EXTRA FiNE ARPEGGiO        xy=1st_tone|2nd_tone    [1-F]',
    '`@@~xy ÄÄ EXTRA FiNE ViBRATO         xy=speed|depth          [1-F]  ~C~',
    '`^`xy ÄÄ EXTRA FiNE TREMOLO         xy=speed|depth          [1-F]  ~C~',
    '`!`xx ÄÄ SWAP ARPEGGiO TABLE        xx=table_number         [0-FF]',
    '`@`xx ÄÄ SWAP ViBRATO TABLE         xx=table_number         [0-FF]',
    '`=`xx ÄÄ FORCE iNSTRUMENT VOLUME    xx=volume_level         [0-3F]',
    '`%`xx ÄÄ SET GLOBAL VOLUME          xx=volume_level         [0-3F]',
    '`>`xx ÄÄ GLOBAL FREQ. SLiDE UP      xx=speed_of_slide       [1-FF]',
    '`<`xx ÄÄ GLOBAL FREQ. SLiDE DOWN    xx=speed_of_slide       [1-FF]',
    '`@@`xx ÄÄ SET CUSTOM SPEED TABLE     xx=parameter            [0-FF]',
    '',
    '`@@`??  `00`     Reset default speed table',
    '     `01`-`FF`  Calculate custom speed table with parameters',
    '            `table size`, `maximum value` and `processing speed factor`',
    '',
    '            ÚÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄ¿',
    '            ³ PARAMETER  ³ `SiZE` ³ `MAX.`   ³ `FACTOR` ³',
    '            ÆÍÍÍÍÍÍÍÍÍÍÍÍØÍÍÍÍÍÍØÍÍÍÍÍÍÍÍØÍÍÍÍÍÍÍÍµ',
    '            ³ `[01]`..`[EF]` ³ 32   ³ ~01~..~EF~ ³ '#7'1     ³',
    '            ³ `[F0]`..`[F3]` ³ ~32~   ³ FF     ³ ~'#7'1~..~'#7'4~ ³',
    '            ³ `[F4]`..`[F7]` ³ ~64~   ³ FF     ³ ~'#7'1~..~'#7'4~ ³',
    '            ³ `[F8]`..`[FB]` ³ ~128~  ³ FF     ³ ~'#7'1~..~'#7'4~ ³',
    '            ³ `[FC]`..`[FF]` ³ ~256~  ³ FF     ³ ~'#7'1~..~'#7'4~ ³',
    '            ÀÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÙ',
    '',
    '`FURTHER NOTES:`',
    '',
    '1) Effects marked as ~C~ in the above list of commands can be continued',
    '   in subsequent lines by setting the parameter value to 0.',
    '',
    '2) Effects marked as ~I~ in the above list of commands do apply',
    '   to currently played instrument only.',
    '',
    'For detailed information on effect commands, see the ~adtrack2.doc~ file.',
    '',
    '',
    '                                ÄÂÄ       ÄÄ',
{$IFDEF GO32V2}
    '                           /´DLiB³R/´CK3R ³³ G3',
{$ELSE}
    '                           /´DLiB³R/´CK3R ³³ SDL',
{$ENDIF}
    '                            ³       ³     ÄÄ',
    '                                      '+at2ver,
    '',
    '',
    '`Get the latest version from:`',
    'http://www.adlibtracker.net',
    '',
    '`Credits:`',

{$IFDEF GO32V2}

    'Florian Klaempfl and others [Free Pascal Compiler 2.6.4]',
    'Karoly Balogh [GO32V2 Timer Services Unit 1.1.0]',
    'Haruhiko Okomura & Haruyasu Yoshizaki [LZH algorithm]',
    'Markus Oberhumer, Laszlo Molnar & John Reiser [UPX 3.91d]',

{$ELSE}

    'Florian Klaempfl and others [Free Pascal Compiler 2.6.4]',
    'Simple DirectMedia Layer [SDL 1.2.15]',
    'Daniel F. Moisset [SDL4Freepascal-1.2.0.0]',
    'Alexey Khokholov [NukedOPL3 1.6]',
    'Haruhiko Okomura & Haruyasu Yoshizaki [LZH algorithm]',
    'Markus Oberhumer, Laszlo Molnar & John Reiser [UPX 3.91w]',

{$ENDIF}

    '',

    '`Honest ''thank you'' to the following people:`',
    'Slawomir Bubel (Malfunction/Altair), Daniel Illgen (insane/Altair),',
    'Mikkel Hastrup (encore), Florian Jung (Windfisch), Dmitry Smagin,',
    'David Cohen (Diode Milliampere), Nick Balega,',
    'Cecill Etheredge (ijsf), Sven Renner (NeuralNET),',
    'Tyler Montbriand (Corona688), Janwillem Jagersma, PissMasterPlus,',
    'and Mr. Maan M. Hamze :-)',
    '',
    '`Greetz fly to the following people:`',
    'Dragan Espenschied (drx/Bodenstandig 2000), Carl Peczynski (OxygenStar),',
    'Hubert Lamontagne (Madbrain), Jason Karl Warren (Televicious), kvee,',
    'Vojta Nedved (nula), and all members of AT2 user group on Facebook');

procedure HELP(topic: String);
procedure ShowStartMessage;

implementation

uses
  StrUtils,
  AdT2unit,AdT2sys,AdT2keyb,AdT2data,
  TxtScrIO,StringIO,DialogIO,ParserIO;

const
  key_comment_B =
    '  C   D   E   F   G   A   B   C   D   E   F   G   A   B   C   D   E';
  key_comment_H =
    '  C   D   E   F   G   A   H   C   D   E   F   G   A   H   C   D   E';

const
  shift_f5_1 = '~[Shift] F5~               @F5 with Trace';
  shift_f8_1 = '~[Shift] F8~               @F8 with Trace';
  shift_f9_1 = '~[Shift] F9~               @F9 with Trace';
  alt_f8_1   = '~[Alt] F8~                 @F8 Ã without synchronization';

const
  shift_f5_2 = '~[Shift] F5~               @F5 with no Trace';
  shift_f8_2 = '~[Shift] F8~               @F8 with no Trace';
  shift_f9_2 = '~[Shift] F9~               @F9 with no Trace';
  alt_f8_2   = '~[Alt] F8~                 @F8 Ã with synchronization';

procedure HELP(topic: String);

var
  spec_attr_table: array[1..255] of Byte;
  temps: String;
  page,temp,fkey: Word;
  temp2: Byte;
  xstart,ystart,ypos,page_len: Byte;
  mpos: Byte;
  mchr: Char;
  new_atr1,
  new_atr2,
  new_atr3: Byte;
  temp_pos_atr1: Byte;
  temp_pos_atr2: Byte;

procedure ListCStr(dest: tSCREEN_MEM_PTR; x,y: Byte;
                   str: String; atr1,atr2,atr3: Byte);
begin
  temp_pos_atr1 := Pos('@@attr:',str);
  temp_pos_atr2 := Pos('@@spec_attr:',str);
  If (Pos('~@@',str) <> 0) then
    begin
      mpos := Pos('~@@',str);
      mchr := str[mpos+3];
      Delete(str,mpos,4);
      Insert(' ',str,mpos);
      ShowC3Str(dest,x,y,
                ExpStrR(str,74+Length(str)-C3StrLen(str),' '),
                atr1,atr2,atr3);
      ShowStr(dest,x+mpos-1,y,mchr,atr2);
     end
  else If (Pos('`@@',str) <> 0) then
         begin
           mpos := Pos('`@@',str);
           mchr := str[mpos+3];
           Delete(str,mpos,4);
           Insert(' ',str,mpos);
           ShowC3Str(dest,x,y,
                     ExpStrR(str,74+Length(str)-C3StrLen(str),' '),
                     atr1,atr2,atr3);
           ShowStr(dest,x+mpos-1,y,mchr,atr3);
         end
       else If (temp_pos_atr1 <> 0) and SameName('@@attr:??,??,??@@',Copy(str,temp_pos_atr1,17)) then
              begin
                new_atr1 := Str2num(Copy(str,temp_pos_atr1+7,2),16);
                If (new_atr1 = 0) then new_atr1 := atr1;
                new_atr2 := Str2num(Copy(str,temp_pos_atr1+10,2),16);
                If (new_atr2 = 0) then new_atr2 := atr2;
                new_atr3 := Str2num(Copy(str,temp_pos_atr1+13,2),16);
                If (new_atr3 = 0) then new_atr3 := atr3;
                Delete(str,temp_pos_atr1,17);
                ShowC3Str(dest,x,y,
                          ExpStrR(str,74+Length(str)-C3StrLen(str),' '),
                          new_atr1,new_atr2,new_atr3);
              end
            else If (temp_pos_atr2 <> 0) and SameName('@@spec_attr:??@@',Copy(str,temp_pos_atr2,16)) then
              begin
                temp2 := Str2num(Copy(str,temp_pos_atr2+12,2),16);
                If (temp2 = 0) or (spec_attr_table[temp2] = 0) then new_atr3 := atr3
                else new_atr3 := spec_attr_table[temp2];
                Delete(str,temp_pos_atr2,16);
                ShowC3Str(dest,x,y,
                          ExpStrR(str,74+Length(str)-C3StrLen(str),' '),
                          atr1,atr2,new_atr3);
              end
            else
              ShowC3Str(dest,x,y,
                        ExpStrR(str,74+Length(str)-C3StrLen(str),' '),
                        atr1,atr2,atr3);
end;

begin
{$IFDEF GO32V2}
  _last_debug_str_ := _debug_str_;
  _debug_str_ := 'ADT2TEXT.PAS:Help';
{$ENDIF}
  ScreenMemCopy(screen_ptr,ptr_screen_backup);
  centered_frame_vdest := screen_ptr;

  // assign special attribute values
  FillChar(spec_attr_table,SizeOf(spec_attr_table),0);
  spec_attr_table[1] := main_behavior SHL 4 AND $0f0;
  spec_attr_table[2] := main_hi_stat_line SHL 4 AND $0f0;

  HideCursor;
  page_len := work_MaxLn-5;
  centered_frame(xstart,ystart,77,page_len+2,' HELP ',
                 help_background+help_border,
                 help_background+help_title,
                 frame_double);
  page := 1;
  While (page <= HELP_LINES-page_len) and ((Copy(help_data[page],1,6) <> '@topic') or
        (Copy(help_data[page],8,Length(help_data[page])-7) <> topic)) do
    Inc(page);

  If (page < 1) then page := 1;
  If (page > HELP_LINES-page_len) then page := HELP_LINES-page_len;

  Repeat
    If (page > 1) then temps := '' else temps := '-';
    If (page < HELP_LINES-page_len) then temps := temps+'' else temps := temps+'-';
    ShowCStr(screen_ptr,xstart+1+74-Length(temps),ystart+page_len+2,
             '[~'+temps+'~]',
             help_background+help_border,
             help_background+help_indicators);
    ypos := ystart+1;
    temp := page;
    While (ypos <= ystart+page_len+1) and (temp <= HELP_LINES) do
      begin
        If (Copy(help_data[temp],1,6) <> '@topic') and
           (Copy(help_data[temp],1,6) <> '@input') then
          begin
            If (Copy(help_data[temp],1,3) <> ' º ') then
              ListCStr(screen_ptr,xstart+2,ypos,
                       help_data[temp],
                       help_background+help_text,
                       help_background+help_keys,
                       help_background+help_hi_text)
            else
              ListCStr(screen_ptr,xstart+2,ypos,
                       help_data[temp],
                       help_background+help_text,
                       help_background+help_keys,
                       help_background+help_topic);
            Inc(ypos);
          end
        else If (Copy(help_data[temp],8,
                 Length(help_data[temp])-7) = 'key_comment') then
            begin
              If NOT use_H_for_B then
                ListCStr(screen_ptr,xstart+2,ypos,
                         key_comment_B,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic)
              else
                ListCStr(screen_ptr,xstart+2,ypos,
                         key_comment_H,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic);
              Inc(ypos);
            end
          else If (Copy(help_data[temp],8,
                   Length(help_data[temp])-7) = 'shift_f5') then
            begin
              If NOT trace_by_default then
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f5_1,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic)
              else
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f5_2,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic);
              Inc(ypos);
            end
          else If (Copy(help_data[temp],8,
                  Length(help_data[temp])-7) = 'shift_f8') then
            begin
              If NOT trace_by_default then
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f8_1,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic)
              else
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f8_2,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic);
              Inc(ypos);
            end
          else If (Copy(help_data[temp],8,
                   Length(help_data[temp])-7) = 'shift_f9') then
            begin
              If NOT trace_by_default then
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f9_1,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic)
              else
                ListCStr(screen_ptr,xstart+2,ypos,
                         shift_f9_2,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic);
              Inc(ypos);
            end
          else If (Copy(help_data[temp],8,
                   Length(help_data[temp])-7) = 'alt_f8') then
            begin
              If NOT nosync_by_default then
                ListCStr(screen_ptr,xstart+2,ypos,
                         alt_f8_1,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic)
              else
                ListCStr(screen_ptr,xstart+2,ypos,
                         alt_f8_2,
                         help_background+help_text,
                         help_background+help_keys,
                         help_background+help_topic);
              Inc(ypos);
            end;

        Inc(temp);
      end;

    fkey := getkey;
    Case fkey of
      kUP:     begin
                 If (page > 1) then Dec(page);
                 If (Copy(help_data[page-1],1,6) = '@topic') and
                    (page > 1) then Dec(page);
               end;

      kDOWN:   begin
                 If (Copy(help_data[page],1,6) = '@topic') and
                    (page < HELP_LINES-page_len) then Inc(page);
                 If (page < HELP_LINES-page_len) then Inc(page);
               end;

      kPgUP:   begin
                 If (page > page_len) then Dec(page,page_len)
                 else page := 1;
                 If (Copy(help_data[page-1],1,6) = '@topic') and
                    (page > 1) then
                   Dec(page);
               end;

      kPgDOWN: begin
                 If (Copy(help_data[page],1,6) = '@topic') and
                    (page < HELP_LINES-page_len) then
                   Inc(page);
                 If (page+page_len <= HELP_LINES-page_len) then
                   Inc(page,page_len)
                 else page := HELP_LINES-page_len;
               end;

      kHOME:   page := 1;
      kEND:    page := HELP_LINES-page_len;
    end;
    // draw_screen;
  until (fkey = kENTER) or (fkey = kESC) or _force_program_quit;

  move_to_screen_data := ptr_screen_backup;
  move_to_screen_area[1] := xstart;
  move_to_screen_area[2] := ystart;
  move_to_screen_area[3] := xstart+77+2;
  move_to_screen_area[4] := ystart+page_len+1;
  move2screen;
end;

{$IFDEF GO32V2}

procedure C3WriteLn(str: String; atr1,atr2,atr3: Byte);
begin
  ShowC3Str(screen_ptr,WhereX,WhereY,
            str,
            atr1,atr2,atr3);
  WriteLn;
end;

{$ELSE}

procedure C3WriteLn(posX,posY: Byte; str: String; atr1,atr2,atr3: Byte);
begin
  ShowC3Str(screen_ptr,posX,posY,
            str,
            atr1,atr2,atr3);

end;

{$ENDIF}

procedure ShowStartMessage;
begin
{$IFDEF GO32V2}
  WriteLn;
  WriteLn(_ADT2_TITLE_STRING_,' coded by subz3ro/Altair');
  WriteLn('            ',at2ver,' ',at2date,' ',at2link,'');
  WriteLn;
{$ENDIF}
end;

end.
