#!/bin/csh
#

set j = 1 
set no = `wc -l < list.txt`  # NOTE THAT wc -l list.txt  ADDS list.txt AND CRASHED while LOOP

while ($j < $no + 1) 
   set name = `head -$j list.txt | tail -1`
   echo $j $name
   ffmpeg -i ~/MUSIC_TO_FIX_REGA/"$name" ~/MP3s_Dad/"$name.mp3"  # CONVERSION TO mp3
   echo "Coverted $name - $j of $no"
@ j = $j + 1
end


