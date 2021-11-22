#!/bin/bash

# https://www.shell-tips.com/bash/loops/

function split_chapter
{
  local CH=$1
  local -n CUT=$2

  printf -v CHSTR "%02d" $CH

  for ((i=1 ; i<${#CUT[@]} ; ++i))
  do
    printf -v ISTR "%02d" $i
    ffmpeg -ss ${CUT[$((i-1))]} -to ${CUT[$i]} -i 0$((CH+35))\ Unidad\ ${CH}\ Es.mp3 -c copy r${CHSTR}_w${ISTR}.mp3
  done
}

TIMES=(
00:00:04.7
00:00:06.7
00:00:09.2
00:00:12.2
00:00:15.2
00:00:18.2
00:00:20.5
00:00:23
00:00:27.1
00:00:29.7
00:00:31.8
00:00:33.8
00:00:36.1
00:00:38.2
00:00:40.6
00:00:42.9
00:00:45
00:00:47.2
00:00:49.7
00:00:51.9
00:00:54.7
00:00:57.5
00:00:59.7
00:01:01.9
00:01:04.3
00:01:06.6
00:01:09.2
00:01:11.6
00:01:16.1
00:01:20.3
00:01:23
00:01:24.9
00:01:27.1
00:01:29.2
00:01:31.7
00:01:34.5
00:01:38.3
)

split_chapter 1 TIMES

TIMES=(
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

split_chapter 2 TIMES