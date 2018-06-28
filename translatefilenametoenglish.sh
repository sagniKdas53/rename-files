#!/bin/bash
#requires https://github.com/soimort/translate-shell
echo "enter the type of file to rename type refers to extension"
#y=".mp3"
read y
#shopt -s dotglob
for dir in */; do (
cd "$dir" && echo "$PWD"; 
for i in y #*.mp3 
do( 
fbname=$(basename "$i" "$y")
echo $fbname
nam=$(trans -show-original n -show-translation Y -show-translation-phonetics n -show-languages n -show-original-dictionary N -show-dictionary n -show-alternatives n -b $fbname)
nam+="$y";
nw_strr="${nam//$'\n'/ }"
echo $nw_strr
mv "$i" "$nw_strr" 
);done
);done
