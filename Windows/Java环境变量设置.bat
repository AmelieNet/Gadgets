::ִ��ǰ�Ȱ�Path�����ݱ���һ��,����֤һ�����������,���´�����Windows7��ȷִ��
@echo off
::�ڵȺź��������JDK·��,���Դ��ո�
set jdkPath=C:\java\jdk1_8
for /f "skip=2 tokens=2*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "Path"') do (
	set oldValue=%%b
)
@reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "JAVA_HOME" /t REG_SZ /d "%jdkPath%" /f >nul
echo %oldValue%|find /i "%JAVA_HOME%" >nul
if %ERRORLEVEL%==1 (
	@reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v "Path" /t REG_EXPAND_SZ /d "%%JAVA_HOME%%\bin;%oldValue%" /f >nul
)
@echo ע����޸ĳɹ�,��������˳�!
@pause>nul
