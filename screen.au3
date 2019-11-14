#include <ScreenCapture.au3>

#include <MsgBoxConstants.au3>


HotKeySet("{F1}", "Terminate")


While 1
	Sleep(100)
WEnd


Func Terminate()
	For $i = 1 To 1000
		_ScreenCapture_Capture('screenshots/' & $i & '.jpg')
		$i = $i + 1
		ToolTip($i, 0, 0)
		Sleep(1000/24)
	Next
EndFunc   ;==>Terminate

