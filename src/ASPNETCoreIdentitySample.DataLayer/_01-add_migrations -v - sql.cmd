For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c_%%a_%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME: =0%") do (set mytime=%%a%%b)
dotnet ef migrations script --startup-project ../PayPing.Invoicing.Api/ -o V%mydate%_%mytime%.sql -v 
pause