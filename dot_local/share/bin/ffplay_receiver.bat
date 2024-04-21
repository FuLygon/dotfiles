@echo off

for /f "tokens=14" %%a in ('ipconfig ^| findstr IPv4') do set _IPaddr=%%a

echo Your Private IP Address: %_IPaddr%

ffplay -nodisp -ac 2 -acodec pcm_s16le -ar 48000 -analyzeduration 0 -probesize 32 -f s16le -i udp://0.0.0.0:
18181?listen=1
