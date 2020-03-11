B4A=true
Group=Default Group
ModulesStructureVersion=1
Type=Class
Version=9.5
@EndOfDesignText@
'Class module
'~1.8 seconds
Private Sub Class_Globals
	Private tim1 As Timer
	Private tim2 As Timer
	Private I As Float
	Private TT As String

End Sub

'Initializes the Class
'ToastText = The text that will be displayed when the back button is clicked once
Public Sub Initialize (ToastText As String)
	I = 0
	tim1.Initialize ("tim1",1000)
	tim1.Enabled = True
	tim2.Initialize ("tim2",100)
	tim2.Enabled = True
	TT = ToastText
End Sub
Private Sub tim1_Tick

	If I > 0 Then
		I = I-0.49
	End If

End Sub
Sub CloseAllActivities
	Dim jo As JavaObject
	jo.InitializeContext
	jo.RunMethod("finishAffinity", Null)
End Sub

Private Sub tim2_Tick
	
	If I >= 2 Then
		'huy da
		CloseAllActivities
		ExitApplication
	End If

End Sub
'Add this to the Activity_Keypress method
Public Sub Exitnow

	ToastMessageShow (TT,False)
	
	I = I+1.3
		
End Sub