@echo off 
echo �밴�������ʼж�ط���. . .
echo.
pause
echo.
echo ����ж�ط���. . .
cd /d %~dp0
%SystemRoot%\Microsoft.NET\Framework\v4.0.30319\installutil.exe /U TaskScheduler.exe >  InstallService.log
echo.
echo ж�����
echo.
echo �������������� InstallService.log �в鿴����Ĳ��������
echo.
pause