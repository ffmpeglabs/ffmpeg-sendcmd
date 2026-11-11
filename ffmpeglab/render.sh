-i $MEDIA_1
-i $MEDIA_2
-filter_complex 
[0:v]fade=t=out:st=4:d=1[airplane];[1:v]loop=loop=-1:size=1:start=0,sendcmd=f=ffmpeglab/commands.txt,format=rgba,colorchannelmixer@fade=aa=1[ov];[airplane][ov]overlay@main
-ss
00:00:00
-to
00:00:20
-y
$OUTPUT_PATH
