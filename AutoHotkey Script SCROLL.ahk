#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

LWin & j::
  Send, {RButton}
return

;LWin & WheelDown::AltTab
;LWin & WheelUp::ShiftAltTab


CapsLock & e::
 MouseClick,WheelUp,,,6,0,D,R
return

CapsLock & d::
 MouseClick,WheelDown,,,6,0,D,R
return

CapsLock & q::
  Send, ^{PgUp}
return

CapsLock & w::
  Send, ^{PgDn}
return

CapsLock & a::ShiftAltTab

CapsLock & s::AltTab

CapsLock & z::
  Send, {Shift down}{LCtrl down}{Tab}{LCtrl up}{Shift up}
return
CapsLock & x::
  Send, {LCtrl down}{Tab}{LCtrl up}
return

CapsLock & c::
  Send, {LCtrl down}{f}{LCtrl up}
return



~MButton & WheelDown::AltTab
~MButton & WheelUp::ShiftAltTab

;~MButton & WheelDown::Send {PgDn}
;~MButton & WheelUp::Send {PgUp}



;SC159 & `::
#`::
Send, #{3}
return



#q::Send, #{4}
#w::Send, #{8}
#/::Send, ^!+{/}
#+a::Run Metapath.exe
;#a::Run npd2.bat
#a::Run, AkelPad.exe


#z::
Send, !{F4}
;Send, #{5}
;Run Metapath.exe
return

#c::Run Calc.exe


;LWin & Tab::AltTab
;+>#Tab::ShiftAltTab


;+Space::
;    Send, {End}
;return


;!+Enter::
;Send, {Enter}{Enter}{Up}{Tab}
;return


;^Enter::
;Send, {End}{Enter}
;return


;^+Enter::
;Send, {Home}{Left}{Enter}
;return




;SC126 ::Send {LWIN}


;#WheelUp :: AltTab
;#WheelDown :: ShiftAltTab




;LAlt
~LAlt & WheelUp::
  ;Send {PgUp}
  MouseClick,WheelUp,,,7,0,D,R
Return

~LAlt & WheelDown::
  ;Send {PgDn}
  MouseClick,WheelDown,,,7,0,D,R
Return




;RButton & WheelDown::Send {PgDn}
;RButton & WheelUp::Send {PgUp}
;RButton::click right



;~RButton & LButton::ShiftAltTab
~LButton & RButton::AltTab




;RButton & MButton::Send, !{F4}


;~RButton & WheelLeft::Send <#{Left}
;~RButton & WheelRight::Send <#{Right}





;Hotkey, *WheelUp, Off
;Hotkey, *WheelDown, Off
;Return
;
;~RButton::
;  Hotkey, *WheelUp, On
;  Hotkey, *WheelDown, On
;  Keywait, RButton
;  Hotkey, *WheelUp, Off
;  Hotkey, *WheelDown, Off
;  If var = 1
;  {
;    var := 0
;    Send, {ESC}
;  }
;Return
;
;*WheelUp::
;  Send, {PgUp}
;  ;MouseClick,WheelUp,,,10,0,D,R
;  var := 1
;Return
;
;*WheelDown::
;  Send, {PgDn}
;  ;MouseClick,WheelDown,,,10,0,D,R
;  var := 1
;Return
;
;Hotkey, *WheelUp, Off
;Hotkey, *WheelDown, Off
;Return



NumLock::Delete
!NumLock::Send {NumLock}



;SC163::Send {LWIN}
;return




;^#x::
;^#c::                            ; Text-only cut/copy to ClipBoard
;   Clip0 = %ClipBoardAll%
;   ClipBoard =
;   StringRight x,A_ThisHotKey,1  ; C or X
;   Send ^%x%                     ; For best compatibility: SendPlay
;   ClipWait 2                    ; Wait for text, up to 2s
;   If ErrorLevel
;      ClipBoard = %Clip0%        ; Restore original ClipBoard
;   Else
;      ClipBoard = %ClipBoard%    ; Convert to text
;   VarSetCapacity(Clip0, 0)      ; Free memory
;Return





;$LButton Down & MButton::Send ^{C}
;LButton::click left
;
;$RButton Down & MButton::Send ^{V}
;RButton::click right



;GOOGLE it ( WIN + G )
#g::
MyClip := ClipboardAll
clipboard = ; empty the clipboard
Send, ^c
ClipWait
Run http://www.google.com/#hl=en&q=%clipboard%
Clipboard := MyClip
Send, ^c
Return


;DUCKDUCKGO ( Shift + WIN + G )
+#g::
MyClip := ClipboardAll
clipboard = ; empty the clipboard
Send, ^c
ClipWait
Run https://duckduckgo.com/?q=%clipboard%
Clipboard := MyClip
Send, ^c
Return

;TRANSLATE ( Ctrl + WIN + G )
<^#g::
MyClip := ClipboardAll
clipboard = ; empty the clipboard
Send, ^c
ClipWait
Run https://translate.google.com/#en/ru/%clipboard%
Clipboard := MyClip
Send, ^c
Return

;TRANSLATE ( Ctrl + Shift + WIN + G )
<^+#g::
MyClip := ClipboardAll
clipboard = ; empty the clipboard
Send, ^c
ClipWait
Run https://translate.google.com/#ru/en/%clipboard%
Clipboard := MyClip
Send, ^c
Return