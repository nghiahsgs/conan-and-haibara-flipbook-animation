#Include <ScreenCapture.au3>

#include <MsgBoxConstants.au3>

Global $i=821
HotKeySet("{F1}", "Terminate")


While 1
    Sleep(100)
WEnd


Func Terminate()
    For $i=1 to 100
	_ScreenCapture_Capture('screenshots/'&$i&'.jpg')
	$i=$i+1
	ToolTip($i,0,0)
	Sleep(200)
	Next
EndFunc   ;==>Terminate

