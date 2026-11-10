-i 
$MEDIA_1 
-i 
$MEDIA_2 
-filter_complex 
[1:v]sendcmd=f=./repo/commands.txt[ov];[0:v][ov]overlay
-c:a copy 
-y
$OUTPUT_PATH
