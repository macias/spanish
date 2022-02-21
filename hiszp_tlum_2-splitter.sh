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
00:00:05.2
00:00:11.4
00:00:16.4
00:00:19.3
00:00:23.6
00:00:27.6
00:00:31
00:00:35.2
00:00:39.3
00:00:42.6
00:00:46
00:00:49.4
00:00:52.7
00:00:56.1
00:01:00.1
00:01:03.4
00:01:06.8
00:01:10.4
00:01:13.5
00:01:17.9
00:01:22.1
00:01:26.9
00:01:30.7
00:01:34
00:01:36.8
00:01:41.8
00:01:50
00:01:55.6
00:01:59.7
00:02:03.5
00:02:09.6
00:02:14.2
00:02:19.2
00:02:24
00:02:28.8
00:02:33.7
00:02:38.1
)

split_chapter 32 TIMES

TIMES=(
00:00:04.3
00:00:07.2
00:00:10.6
00:00:18.8
00:00:23.3
00:00:26.4
00:00:30.2
00:00:34.6
00:00:39.7
00:00:45
00:00:49.6
00:00:55
00:01:03.5
00:01:09.4
00:01:15.2
00:01:19.6
00:01:24.1
00:01:29.5
00:01:35.8
00:01:41.4
00:01:46.2
00:01:49.8
00:01:56.2
00:02:02.7
00:02:07
00:02:11.4
00:02:16.3
00:02:20.5
00:02:24.6
00:02:28
00:02:32.8
00:02:37.2
00:02:41.6
00:02:47.5
00:02:51.9
00:02:57.2
00:03:01.1
)

split_chapter 31 TIMES

TIMES=(
00:00:04.1
00:00:06.7
00:00:10
00:00:13.3
00:00:17.2
00:00:20.7
00:00:24.4
00:00:30.3
00:00:34.5
00:00:38.1
00:00:41.8
00:00:46.1
00:00:52.2
00:00:58.8
00:01:07.1
00:01:12.3
00:01:16.4
00:01:19.6
00:01:25
00:01:32.1
00:01:40.2
00:01:45.6
00:01:50.4
00:01:56
00:02:00.1
00:02:04.3
00:02:11.9
00:02:20.1
00:02:27.6
00:02:32.5
00:02:36.3
00:02:41.6
00:02:46
00:02:50.5
00:02:55.1
00:03:00.8
00:03:08.5
)

split_chapter 30 TIMES

TIMES=(
00:00:06.8
00:00:11.5
00:00:17.1
00:00:22.3
00:00:26.5
00:00:29.6
00:00:33.4
00:00:38.7
00:00:44.7
00:00:56.4
00:01:01.1
00:01:05.1
00:01:10.9
00:01:21.1
00:01:28.6
00:01:35.4
00:01:40.1
00:01:43.7
00:01:47.3
00:01:51.7
00:01:56.1
00:02:01.2
00:02:06.2
00:02:13
00:02:20.1
00:02:24.8
00:02:29.1
00:02:33.1
00:02:37.1
00:02:41.1
00:02:46.1
00:02:51.1
00:02:56
00:03:02.4
00:03:06.9
00:03:13.5
00:03:18
)

split_chapter 29 TIMES

TIMES=(
00:00:07.5
00:00:12.5
00:00:16.3
00:00:22.3
00:00:27.3
00:00:31.5
00:00:37.3
00:00:42.3
00:00:47.9
00:00:51.6
00:00:58.2
00:01:08.9
00:01:13.7
00:01:19.1
00:01:27.4
00:01:36.8
00:01:43.5
00:01:49.6
00:01:56.1
00:02:03.9
00:02:13.1
00:02:20
00:02:26
00:02:30.4
00:02:36.5
00:02:43.7
00:02:51.4
00:02:59.9
00:03:07.4
00:03:14.4
00:03:22.1
00:03:29.6
00:03:34.7
00:03:41.1
00:03:51
00:03:58.1
00:04:04.5
)

split_chapter 28 TIMES

TIMES=(
00:00:07.3
00:00:13
00:00:19.8
00:00:25.5
00:00:34.2
00:00:44.9
00:00:58.3
00:01:05.2
00:01:10.2
00:01:15.5
00:01:25.1
00:01:34.6
00:01:42.5
00:01:50.7
00:02:01.8
00:02:10.4
00:02:16.6
00:02:27.4
00:02:34.8
00:02:43
00:02:49.9
00:02:57.8
00:03:10.4
00:03:18.8
00:03:25.1
00:03:32.5
00:03:39.7
00:03:45.7
00:03:51.8
00:04:02.2
00:04:08.4
00:04:15
00:04:22.8
00:04:30.9
00:04:37.6
00:04:43.9
00:04:50.1
)

split_chapter 27 TIMES

TIMES=(
00:00:06.8
00:00:09.2
00:00:14.3
00:00:18.7
00:00:22.8
00:00:27.7
00:00:32.5
00:00:43
00:00:49.2
00:00:54.9
00:01:00.5
00:01:05.5
00:01:15.9
00:01:24.2
00:01:32.1
00:01:39.8
00:01:45.3
00:01:50
00:01:54.3
00:01:59.3
00:02:04.3
00:02:12.1
00:02:19.1
00:02:25.5
00:02:34.4
00:02:40.7
00:02:45.9
00:02:50.7
00:02:56.6
00:03:03.6
00:03:10.2
00:03:17
00:03:29.7
00:03:34.2
00:03:42.8
00:03:49.9
00:03:56.6
)

split_chapter 26 TIMES

TIMES=(
00:00:04.2
00:00:08.4
00:00:14.8
00:00:19.3
00:00:26.4
00:00:32.8
00:00:38.8
00:00:43.4
00:00:53.5
00:01:00.7
00:01:11
00:01:18
00:01:24.7
00:01:31.1
00:01:38.2
00:01:51.1
00:01:59.6
00:02:03.5
00:02:08.5
00:02:12.4
00:02:18.5
00:02:24.8
00:02:32.2
00:02:39
00:02:50.4
00:02:55.5
00:03:00.7
00:03:05.1
00:03:09.9
00:03:18
00:03:24.7
00:03:30.9
00:03:43
00:03:50.6
00:03:58.6
00:04:11.7
00:04:17.2
)

split_chapter 25 TIMES

TIMES=(
00:00:07.1
00:00:13.5
00:00:20.4
00:00:24.7
00:00:30.8
00:00:35.5
00:00:43.4
00:00:52.4
00:01:02.9
00:01:10.9
00:01:21.1
00:01:33
00:01:41.9
00:01:49.1
00:01:58.3
00:02:08.2
00:02:16
00:02:21.5
00:02:28
00:02:34.4
00:02:43.2
00:02:48.1
00:02:51.3
00:02:58.1
00:03:07
00:03:14.5
00:03:21.2
00:03:29.3
00:03:35.5
00:03:41.5
00:03:49.7
00:03:58.1
00:04:05.8
00:04:14.7
00:04:24
00:04:33.3
00:04:41.7
)

split_chapter 24 TIMES

TIMES=(
00:00:04.2
00:00:09.8
00:00:20.2
00:00:26.1
00:00:40.6
00:00:48.6
00:00:56.9
00:01:05
00:01:11.7
00:01:18.1
00:01:26.3
00:01:34.5
00:01:41.8
00:01:51.2
00:01:59.3
00:02:09.7
00:02:18.7
00:02:26
00:02:33.3
00:02:40.3
00:02:50.2
00:03:00.4
00:03:09.9
00:03:19.9
00:03:25.7
00:03:31.8
00:03:36.4
00:03:45
00:03:56.2
00:04:05.3
00:04:13.5
00:04:22.5
00:04:31.4
00:04:39.3
00:04:48.7
00:05:06.3
00:05:15.5
)

split_chapter 23 TIMES

TIMES=(
00:00:07.9
00:00:12.8
00:00:20.2
00:00:26.7
00:00:32.3
00:00:43.8
00:00:48.3
00:00:53.1
00:00:59.6
00:01:05.7
00:01:14.2
00:01:22.2
00:01:28.6
00:01:34.6
00:01:41
00:01:47.3
00:01:53
00:01:57.5
00:02:03.5
00:02:08.1
00:02:11.9
00:02:19.3
00:02:25
00:02:30.9
00:02:35
00:02:38.2
00:02:42.1
00:02:51.4
00:02:55.1
00:02:59.9
00:03:06.4
00:03:13.9
00:03:21.9
00:03:26.3
00:03:33.2
00:03:41.4
00:03:46.6
)

split_chapter 22 TIMES

TIMES=(
00:00:08.2
00:00:11.3
00:00:16.8
00:00:21.4
00:00:33.3
00:00:41.7
00:00:47.8
00:00:55
00:01:02.5
00:01:11.6
00:01:24.3
00:01:33.4
00:01:45.2
00:01:50.5
00:01:56.6
00:02:05.4
00:02:14
00:02:24
00:02:31.5
00:02:38.6
00:02:45.5
00:02:51
00:02:57
00:03:05.6
00:03:17.5
00:03:23.3
00:03:27.1
00:03:32
00:03:37.8
00:03:43.7
00:03:50.5
00:04:01.5
00:04:08.4
00:04:13.9
00:04:20.8
00:04:34
00:04:40.9
)

split_chapter 21 TIMES

TIMES=(
00:00:06.3
00:00:11.6
00:00:19.2
00:00:27.9
00:00:32.94
00:00:38.5
00:00:48.3
00:00:55.1
00:01:01
00:01:05
00:01:09.9
00:01:17
00:01:26.5
00:01:35.2
00:01:41.6
00:01:50.4
00:01:58
00:02:05.4
00:02:14.8
00:02:22.5
00:02:30.6
00:02:39.4
00:02:47.6
00:02:59.7
00:03:10.1
00:03:17.3
00:03:24.4
00:03:32.2
00:03:40.3
00:03:50.2
00:03:59.3
00:04:09.3
00:04:19.3
00:04:26.9
00:04:37.5
00:04:44.7
00:05:50.3
)

split_chapter 20 TIMES

TIMES=(
00:00:07.2
00:00:11.4
00:00:17.2
00:00:26.9
00:00:36.9
00:00:43.5
00:00:52.4
00:01:02.4
00:01:10.4
00:01:17.9
00:01:25.5
00:01:34.7
00:01:44.5
00:01:52.4
00:01:59
00:02:09.7
00:02:19.8
00:02:29.6
00:02:37.9
00:02:46.6
00:02:55.8
00:03:02.5
00:03:15.6
00:03:23.1
00:03:30.9
00:03:41.8
00:03:50.6
00:04:01.8
00:04:09.9
00:04:16.8
00:04:25.7
00:04:34.6
00:04:42.7
00:04:50.5
00:04:56.9
00:05:07.8
00:05:16.7
)

split_chapter 19 TIMES

TIMES=(
00:00:05
00:00:10.9
00:00:17.4
00:00:25.3
00:00:32
00:00:39.2
00:00:46.8
00:00:54.1
00:01:03.6
00:01:12.3
00:01:20.1
00:01:26.9
00:01:32.4
00:01:40.3
00:01:48.9
00:01:56
00:02:03.4
00:02:12.5
00:02:25.1
00:02:32.2
00:02:39.2
00:02:46.7
00:02:54.5
00:03:02
00:03:10.2
00:03:18.8
00:03:26.8
00:03:35.4
00:03:45.4
00:03:53.1
00:03:59.3
00:04:06.7
00:04:13.6
00:04:28.8
00:04:37
00:04:44.5
00:04:52
)

split_chapter 18 TIMES

TIMES=(
00:00:04.6
00:00:09.2
00:00:16.3
00:00:21
00:00:29.7
00:00:39.3
00:00:46.8
00:00:54.7
00:01:10.1
00:01:18.5
00:01:27.3
00:01:35.1
00:01:44.6
00:01:53.5
00:02:00
00:02:07.4
00:02:17.4
00:02:27.6
00:02:33.7
00:02:38.3
00:02:42
00:02:48.7
00:02:54.3
00:03:02.1
00:03:07.6
00:03:13.1
00:03:19
00:03:22.9
00:03:31
00:03:36.3
00:03:43.2
00:03:51.1
00:03:55.7
00:04:02.8
00:04:09.6
00:04:17.4
00:04:24.9
)

split_chapter 17 TIMES

TIMES=(
00:00:06.9
00:00:13.8
00:00:22
00:00:32.9
00:00:41.3
00:00:48.8
00:00:57.1
00:01:07
00:01:14.9
00:01:22
00:01:29.7
00:01:37.5
00:01:49.5
00:01:59.1
00:02:06.4
00:02:15.4
00:02:24.3
00:02:31.7
00:02:40.8
00:02:49
00:02:55.7
00:03:05.3
00:03:13.2
00:03:23.1
00:03:32.7
00:03:40.7
00:03:49.1
00:03:58.1
00:04:08.3
00:04:18.6
00:04:27.3
00:04:32.3
00:04:39.4
00:04:47.2
00:04:55
00:05:03.9
00:05:11.4
)

split_chapter 16 TIMES

TIMES=(
00:00:05.4
00:00:10.4
00:00:15.3
00:00:24.6
00:00:29.9
00:00:35.1
00:00:42.4
00:00:48.9
00:00:57.6
00:01:05.6
00:01:15.1
00:01:24.1
00:01:29.7
00:01:34.7
00:01:40.3
00:01:48.9
00:01:55.2
00:02:04.1
00:02:13.7
00:02:22
00:02:32.9
00:02:38.7
00:02:47.4
00:02:56.9
00:03:05.2
00:03:14.4
00:03:20.9
00:03:31.5
00:03:37.9
00:03:45.1
00:03:54.2
00:04:00.9
00:04:10.1
00:04:19.9
00:04:31.6
00:04:40.9
00:04:48.1
)

split_chapter 15 TIMES

TIMES=(
00:00:05.4
00:00:11.2
00:00:18.5
00:00:25.7
00:00:32.4
00:00:41
00:00:49.4
00:00:56.9
00:01:04.7
00:01:14.3
00:01:22.9
00:01:29.1
00:01:36.7
00:01:45.7
00:01:50.9
00:01:58.7
00:02:08.2
00:02:16.4
00:02:20
00:02:23.8
00:02:29.7
00:02:36.2
00:02:42.7
00:02:49.6
00:02:56.5
00:03:05.1
00:03:12.5
00:03:20.2
00:03:27.3
00:03:34.8
00:03:42.7
00:03:57.4
00:04:08.5
00:04:21
00:04:27.9
00:04:34.6
00:04:40.3
)

split_chapter 14 TIMES

TIMES=(
00:00:07.2
00:00:11.1
00:00:15.5
00:00:19.5
00:00:24.8
00:00:29.8
00:00:35.6
00:00:41
00:00:47.2
00:00:53.6
00:00:59.8
00:01:05.3
00:01:10.4
00:01:20.1
00:01:24.3
00:01:30.3
00:01:40.4
00:01:45.6
00:01:53.5
00:02:02.6
00:02:11
00:02:18.5
00:02:29.4
00:02:34.4
00:02:39.6
00:02:48.1
00:02:55.9
00:03:06.5
00:03:10.8
00:03:18.5
00:03:25.9
00:03:33.3
00:03:41.1
00:03:52.4
00:04:02.1
00:04:09.9
00:04:17.6
)

split_chapter 13 TIMES

TIMES=(
00:00:04.2
00:00:09.9
00:00:13.9
00:00:18.2
00:00:21.1
00:00:31.2
00:00:37.1
00:00:43.6
00:00:53.5
00:01:03.9
00:01:13.9
00:01:24.2
00:01:35.3
00:01:42
00:01:45.7
00:01:51.3
00:01:58.7
00:02:09.5
00:02:16.8
00:02:21.4
00:02:28.9
00:02:38
00:02:49.4
00:02:55.3
00:03:02.1
00:03:09.7
00:03:24.3
00:03:29.6
00:03:35.7
00:03:40.3
00:03:50.4
00:04:01.2
00:04:04.9
00:04:11.9
00:04:21.4
00:04:29.9
00:04:33.2
)

split_chapter 12 TIMES

TIMES=(
00:00:06.6
00:00:13.6
00:00:22.3
00:00:32.5
00:00:41.4
00:00:46.2
00:01:02.3
00:01:12.8
00:01:23.4
00:01:30.7
00:01:39.4
00:01:47
00:01:55.9
00:02:05.1
00:02:13.6
00:02:24.3
00:02:30.5
00:02:36.1
00:02:47
00:02:53.1
00:03:03.5
00:03:13.7
00:03:19.7
00:03:29
00:03:41
00:03:48.7
00:03:57.1
00:04:05.9
00:04:12.9
00:04:22.9
00:04:31.1
00:04:43.5
00:04:51.7
00:05:01.1
00:05:09.5
00:05:17.3
00:05:42.3
)

split_chapter 11 TIMES

TIMES=(
00:00:05.8
00:00:13.3
00:00:16.4
00:00:24.4
00:00:34.8
00:00:40.9
00:00:52
00:00:56.3
00:01:10
00:01:19.9
00:01:29
00:01:36.1
00:01:43.2
00:01:50.3
00:02:00.7
00:02:10.2
00:02:17.5
00:02:23.5
00:02:30.5
00:02:36.6
00:02:45.7
00:02:55.9
00:03:04.9
00:03:12.4
00:03:17.5
00:03:24.2
00:03:42.2
00:03:47.3
00:03:55.4
00:04:06.5
00:04:14.5
00:04:24.7
00:04:33.9
00:04:41.9
00:04:50.9
00:05:01.2
00:05:16.8
)

split_chapter 10 TIMES

TIMES=(
00:00:05.3
00:00:10.2
00:00:18.1
00:00:24.2
00:00:30.9
00:00:37.9
00:00:44.7
00:00:52.3
00:00:56.8
00:01:03.9
00:01:09.4
00:01:17.6
00:01:27.9
00:01:35
00:01:41.6
00:01:50.1
00:01:58.1
00:02:04.4
00:02:11.4
00:02:19.2
00:02:25
00:02:33.4
00:02:41.9
00:02:48.8
00:02:56.3
00:03:02.1
00:03:10.5
00:03:17.5
00:03:24.5
00:03:31.6
00:03:37.7
00:03:43.4
00:03:50.2
00:03:54.8
00:03:58.9
00:04:03.7
00:04:07.8
)

split_chapter 9 TIMES

TIMES=(
00:00:07.3
00:00:18.7
00:00:25.1
00:00:31.9
00:00:38.4
00:00:46.2
00:00:53.2
00:00:58.5
00:01:04.8
00:01:13.1
00:01:25.5
00:01:32.3
00:01:36.2
00:01:39.8
00:01:49.1
00:01:55
00:01:59.6
00:02:08.8
00:02:16.2
00:02:23.2
00:02:29.2
00:02:36.4
00:02:42.6
00:02:48.4
00:02:55.3
00:03:01.1
00:03:06.5
00:03:11.7
00:03:17.5
00:03:25.2
00:03:33.5
00:03:41.5
00:03:49.4
00:03:56.4
00:04:03.3
00:04:11.2
00:04:17.6
)

split_chapter 8 TIMES

TIMES=(
00:00:08.1
00:00:11.9
00:00:16.5
00:00:21.2
00:00:24.8
00:00:28.8
00:00:35.8
00:00:41.8
00:00:47.9
00:00:55.1
00:01:00.8
00:01:04.7
00:01:11.4
00:01:15.3
00:01:21.8
00:01:27.7
00:01:34.6
00:01:40.5
00:01:45.4
00:01:52
00:01:58.4
00:02:04.1
00:02:08.9
00:02:15
00:02:21.7
00:02:28.7
00:02:35.7
00:02:43.3
00:02:49.3
00:02:55.2
00:03:00.4
00:03:10.1
00:03:17.8
00:03:22.8
00:03:30.3
00:03:35
00:03:40.3
)

split_chapter 7 TIMES

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

TIMES=(
00:00:03.9
00:00:08.1
00:00:11.5
00:00:16.2
00:00:21.7
00:00:26.3
00:00:32
00:00:43.2
00:00:49.3
00:00:54.7
00:00:58.5
00:01:04.2
00:01:11
00:01:16.4
00:01:32
00:01:42.4
00:01:52
00:01:58.6
00:02:07.3
00:02:17.2
00:02:23.3
00:02:31.8
00:02:39.4
00:02:47.1
00:02:55.6
00:03:07.2
00:03:17.4
00:03:23.5
00:03:32.1
00:03:36.9
00:03:43.8
00:03:51.7
00:04:03.3
00:04:11
00:04:18.8
00:04:28.3
00:04:35.9
)

split_chapter 4 TIMES

TIMES=(
00:00:07.9
00:00:11.3
00:00:19.6
00:00:24
00:00:33.8
00:00:41.1
00:00:49.4
00:01:01.2
00:01:10.8
00:01:20.9
00:01:27
00:01:31.9
00:01:38.4
00:01:46.8
00:01:54.5
00:02:01.4
00:02:08.3
00:02:16.1
00:02:20.6
00:02:29
00:02:37.5
00:02:45.6
00:02:50.4
00:02:56.2
00:03:01.1
00:03:06.4
00:03:14.9
00:03:28.5
00:03:35.7
00:03:42.5
00:03:49.9
00:03:56.6
00:04:03.9
00:04:16.8
00:04:21.6
00:04:26.3
00:04:35.1
)

split_chapter 5 TIMES

TIMES=(
00:00:06.6
00:00:10.2
00:00:18.1
00:00:24.1
00:00:29.5
00:00:33.9
00:00:38.6
00:00:43.8
00:00:53
00:00:59
00:01:04
00:01:11.6
00:01:20.2
00:01:28.1
00:01:35.3
00:01:44.9
00:01:53.8
00:02:00.1
00:02:06
00:02:12.7
00:02:18.8
00:02:23.7
00:02:28.8
00:02:35.5
00:02:41.5
00:02:47.7
00:02:52.2
00:03:02.7
00:03:07.9
00:03:11.7
00:03:17.1
00:03:25.2
00:03:33.2
00:03:39.4
00:03:45.9
00:03:50.9
00:03:57
)

split_chapter 6 TIMES
