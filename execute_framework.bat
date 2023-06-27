cd C:\Users\Japneet Sachdeva\PycharmProjects\robotPOM
:: Get date in 'yyyyMMdd_HHmm' format to use with file name
::FOR /f "tokens=2-4 delims=/ " %%a IN ("%date%") DO SET today=%%a%%b%%c

FOR /f "usebackq" %%i IN (`PowerShell ^(Get-Date^).ToString^('yyyy_MM_dd_HHmm'^)`) DO SET DTime=%%i


pabot --processes 2 --outputdir Reports\%DTime%\ TestCases\*.robot