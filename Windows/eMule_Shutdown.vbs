' eMule�Զ��ػ��ű�
' author:Amelie

Dim path,time,result

' �������� path:temp�ļ�������λ�� time:�ػ�ʱ��,�Է���Ϊ��λ
path = "Z:\Xtreme\Temp"
time = 10


Set dir = CreateObject("Scripting.FileSystemObject").GetFolder(path)
Set ws = WScript.CreateObject("WScript.Shell")
Do While True
	If dir.Files.Count = 0 AND dir.SubFolders.Count = 0 Then
		ws.run "shutdown -s -t "&time*60,0
		If msgbox("ϵͳ������"&time&"���Ӻ�ػ�"+Chr(10)+"�Ƿ�ȡ�����ιػ���",vbYesNo,"eEmule�Զ��ػ�") = 6 Then
			ws.run "shutdown -a",0
			msgbox "�ػ�������ȡ��",0,"�ɹ�"
		End If
		wscript.quit
	End If
	WScript.Sleep 120000
Loop