@echo off
echo command="%%windir%%\System32\cmd.exe /c javap -l -p -s -constants -c -verbose """+WScript.Arguments(0)+""" > """+WScript.Arguments(0)+".bytecode.txt""" > "%ProgramFiles%\javap.vbs"
echo CreateObject("WScript.Shell").Run command,0 >> "%ProgramFiles%\javap.vbs"
reg add "HKCR\.class\shell" /ve /t REG_SZ /d "��" /f
reg add "HKCR\.class\shell\javap(J)\Command" /ve /t REG_EXPAND_SZ /d "wscript \"%ProgramFiles%\javap.vbs\" \"%%1\"" /f
echo ����"Java�ֽ��뷴����"�Ҽ��˵��ɹ���3��󱾴����Զ��ر�
ping -n 3 0 >nul

:: ����: Amelie 
:: ��ʾ: ͬʱѡ�ж��.class�ļ�,��Menu��(��Ctrl���)֮���ٰ�J��,ͬʱ��������.class�ļ�
:: ��bug����������
:: ��������:JDK