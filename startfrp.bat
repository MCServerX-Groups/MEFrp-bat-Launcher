@ECHO OFF
set "%frpname%"=="%1"
set "%frpaddress%"=="%2"
set "frpwindow"=="%3"
cd /D %~dp0
mode con cols=62 lines=16
TITLE ME FRP��%frpname%

CLS
ECHO.
ECHO.
ECHO.�������%frpname%�� %frpaddress%
ECHO.
ECHO.
echo.%frpaddress%>addrtmp.txt
clip < addrtmp.txt
del addrtmp.txt 1>nul 2>nul
COLOR 2F
ECHO.�·����� start proxy success ��Ϊ��������ɹ������������δ��������ַ�Ѹ��Ƶ������塣�رմ˴��ڼ��ر������
del ..\..\noticeoff 1>nul 2>nul
frpc-%frpname%.exe -c frpc.ini
::���ߵ�����˵��frpc������ֹͣ����
if exist ..\..\noticeoff del ..\..\noticeoff & EXIT
if "%frpwindow%"=="off" msg %username% "ME_FRP�����%frpname%��ֹͣ���У�������������������ʧ�ܻ���򱻽�����" & EXIT
ECHO.
COLOR 4F
ECHO.frpc.exe������ֹͣ���У�������������������ʧ�ܻ���򱻽�����
pause>nul
EXIT