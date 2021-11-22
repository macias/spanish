#!/bin/bash

# https://www.shell-tips.com/bash/loops/

CH=2

CUT=(
00:00:03.8
00:00:06
00:00:08.3
00:00:12.1
00:00:15.6
00:00:21.5
00:00:26.8
00:00:31.4
00:00:37
00:00:41.8
00:00:46.6
00:00:49.5
00:00:55
00:01:03.4
00:01:10.9
00:01:16.7
00:01:20.3
00:01:22.8
00:01:26
00:01:30.7
00:01:33.9
00:01:37.2
00:01:41
00:01:45
00:01:48.6
00:01:52.9
00:01:56.8
00:02:02.9
00:02:09.8
00:02:15
00:02:18.7
00:02:25.8
00:02:32.5
00:02:38.3
00:02:42.4
00:02:46.5
00:02:53.1
)

printf -v CHSTR "%02d" $CH

for ((i=1 ; i<${#CUT[@]} ; ++i))
do
  printf -v ISTR "%02d" $i
  ffmpeg -ss ${CUT[$((i-1))]} -to ${CUT[$i]} -i 037\ Unidad\ ${CH}\ Es.mp3 -c copy r${CHSTR}_w${ISTR}.mp3
done

