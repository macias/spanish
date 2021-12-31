#!/bin/bash

# https://www.shell-tips.com/bash/loops/

function split_chapter
{
  local CH=$1
  local -n CUT=$2
  # line mapping so we could get some junk-in-the-middle out of regular line numbering
  if (( $# == 2 ))
  then
    local MAP=()
  else
    local -n MAP=$3
  fi

  printf -v CHSTR "%02d" $CH

  FILE=0$((CH+35))\ Unidad\ ${CH}\ ES\ VER_LANG.mp3

  line=1
  USED=()
  for ((i=1 ; i<${#CUT[@]} ; ++i))
  do
    curr_line=$line
    # if the given entry is mapped in line-map, then use the given line number, otherwise increase the number as usual
    if [ ${MAP[$i]+_} ]
    then
      curr_line=${MAP[$i]}
      USED[$curr_line]=1
    else
      while true
      do
        line=$((++line))
        # we need to skip over used targets from line mapping
        if [ ! ${USED[$line]+_} ]
        then
          break
        fi
      done
    fi
    printf -v LSTR "%02d" $curr_line
    ffmpeg -n -ss ${CUT[$((i-1))]} -to ${CUT[$i]} -i "$FILE" -c copy r${CHSTR}_w${LSTR}.mp3
  done
}

declare -A LINES

TIMES=(
00:00:05.7
00:00:12.7
00:00:19.6
00:00:26.7
00:00:29.9
00:00:37.1
00:00:42.5
00:00:49.9
00:00:56.9
00:01:02.7
00:01:07.5
00:01:17.3
00:01:26.5
00:01:33.3
00:01:39.3
00:01:45.4
00:01:54.8
00:02:03.1
00:02:06.1
00:02:12.1
00:02:18.8
00:02:32.8
00:02:41
00:02:51.8
00:02:58.7
00:03:06.8
00:03:14.6
00:03:22.1
00:03:29.5
00:03:38.8
00:03:47.2
00:03:56.1
00:04:03.8
00:04:09.3
00:04:15.4
00:04:23
00:04:29.9
)

split_chapter 1 TIMES

TIMES=(
00:00:07.3
00:00:11.7
00:00:19.1
00:00:23.6
00:00:29.8
00:00:36.7
00:00:43.6
00:00:51.6
00:01:01.1
00:01:06.7
00:01:13.3
00:01:18.1
00:01:22.2
00:01:27.4
00:01:35.1
00:01:47.2
00:01:54.6
00:02:00.7
00:02:06.2
00:02:09.9
00:02:17.9
00:02:24
00:02:32.6
00:02:45.2
00:02:52.6
00:03:01.2
00:03:09.6
00:03:20.1
00:03:27.2
00:03:35.1
00:03:43.7
00:03:52.6
00:04:01.4
00:04:07.1
00:04:15
00:04:22.7
00:04:30.1
)

split_chapter 2 TIMES

LINES[16]=23  # some freaking mess

TIMES=(
00:00:07.3
00:00:16.6
00:00:27.8
00:00:35.2
00:00:43.9
00:00:51.9
00:01:02.4
00:01:09
00:01:18.1
00:01:23
00:01:29
00:01:38.1
00:01:43.9
00:01:51.2
00:02:03
00:02:14
00:02:23.1
00:02:34.3
00:02:44.1
00:02:52.9
00:03:03.4
00:03:15.4
00:03:26.7
00:03:32.4
00:03:40.2
00:03:49
00:03:58.2
00:04:07.5
00:04:13.9
00:04:20.5
00:04:31.5
00:04:38.5
00:04:46.1
00:04:53.7
00:05:02
00:05:09.2
00:05:15.2
)

split_chapter 3 TIMES LINES

LINES=()
