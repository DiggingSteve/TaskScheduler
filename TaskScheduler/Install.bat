@echo off 
echo �밴�������ʼ��װ����. . .
echo.
pause
echo.
echo ����ԭ�з�����. . .
cd /d %~dp0
%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\installutil.exe /U TaskScheduler.exe >  InstallService.log
echo.
echo ������ϣ���ʼ��װ��̨����. . .
echo.
%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\installutil.exe TaskScheduler.exe >>  InstallService.log
echo ����װ��ϣ���������. . .
Net Start TaskScheduler >>  InstallService.log
sc config TaskScheduler start= auto
echo.
echo �������������� InstallService.log �в鿴����Ĳ��������
echo.
pause