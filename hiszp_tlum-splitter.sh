#!/bin/bash

# https://www.shell-tips.com/bash/loops/

function split_chapter
{
  local CH=$1
  local -n CUT=$2

  printf -v CHSTR "%02d" $CH

  FILE=0$((CH+35))\ Unidad\ ${CH}\ Es.mp3

  if [ ! -f "$FILE" ]
  then
    # brilliant work from Preston Publishing
    FILE=0$((CH+35))\ Unidad\ ${CH}\ ES.mp3
  fi

  for ((i=1 ; i<${#CUT[@]} ; ++i))
  do
    printf -v ISTR "%02d" $i
    ffmpeg -n -ss ${CUT[$((i-1))]} -to ${CUT[$i]} -i "$FILE" -c copy r${CHSTR}_w${ISTR}.mp3
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

TIMES=(
00:00:05
00:00:09.2
00:00:13.9
00:00:18.4
00:00:23.3
00:00:29.8
00:00:36.4
00:00:43
00:00:50
00:00:57
00:01:02.8
00:01:10.1
00:01:17.2
00:01:24.2
00:01:30.1
00:01:36.3
00:01:43.5
00:01:48.7
00:01:54.3
00:02:01.4
00:02:09.4
00:02:15
00:02:21.4
00:02:27.1
00:02:31.3
00:02:36.2
00:02:41.4
00:02:46.8
00:02:51.1
00:02:54.5
00:02:58.1
00:03:02.3
00:03:08.9
00:03:14.6
00:03:20.6
00:03:27.3
00:03:31.5
)

split_chapter 3 TIMES

TIMES=(
00:00:08.9
00:00:12.2
00:00:19.3
00:00:24.5
00:00:27.9
00:00:33
00:00:37.5
00:00:42.1
00:00:49.6
00:00:55.3
00:01:01.5
00:01:07.6
00:01:11.7
00:01:17.4
00:01:23.4
00:01:30.1
00:01:34.6
00:01:40.5
00:01:45.6
00:01:51.7
00:01:57.3
00:02:03.1
00:02:09.1
00:02:13.8
00:02:18.1
00:02:23.5
00:02:28.1
00:02:32.1
00:02:37.6
00:02:45.4
00:02:50.5
00:02:54.6
00:02:58.7
00:03:04.3
00:03:11.1
00:03:15.9
00:03:22.2
)

split_chapter 4 TIMES

TIMES=(
00:00:09.1
00:00:13.6
00:00:18
00:00:24.3
00:00:29
00:00:33.9
00:00:38
00:00:41.9
00:00:46.4
00:00:52.1
00:00:57
00:01:03
00:01:08.1
00:01:13.6
00:01:19.3
00:01:24.7
00:01:34.7
00:01:40
00:01:45.8
00:01:54.2
00:01:59.4
00:02:05.4
00:02:09.5
00:02:14.4
00:02:20.9
00:02:27.4
00:02:32.7
00:02:36.8
00:02:42.7
00:02:46.9
00:02:50.9
00:02:54.7
00:02:59
00:03:05.6
00:03:09.6
00:03:14.2
00:03:18.8
)

split_chapter 5 TIMES

TIMES=(
00:00:05.4
00:00:08.4
00:00:12.4
00:00:17
00:00:22.9
00:00:26.6
00:00:33.8
00:00:37
00:00:40.4
00:00:46.3
00:00:49.9
00:00:55.2
00:00:59.5
00:01:03.4
00:01:06.9
00:01:10.8
00:01:14.8
00:01:17.9
00:01:21.5
00:01:25.4
00:01:32.4
00:01:36.1
00:01:39.5
00:01:43.3
00:01:48
00:01:52.3
00:01:56
00:02:01.1
00:02:05.2
00:02:09.1
00:02:13.7
00:02:22.4
00:02:26.3
00:02:30.2
00:02:34.3
00:02:38.9
00:02:43.5
)

split_chapter 6 TIMES

TIMES=(
00:00:04.9
00:00:08.2
00:00:11.8
00:00:16.1
00:00:20.3
00:00:24.4
00:00:28.3
00:00:34.6
00:00:41.8
00:00:49.4
00:00:54.5
00:00:59.4
00:01:04.3
00:01:07.6
00:01:14
00:01:18.3
00:01:22.6
00:01:26.5
00:01:29.7
00:01:33.6
00:01:36.7
00:01:42.2
00:01:50
00:01:54
00:01:57.2
00:02:02.2
00:02:06
00:02:11.5
00:02:15.6
00:02:19.8
00:02:24.1
00:02:29
00:02:33.6
00:02:37.9
00:02:41.1
00:02:48.7
00:02:58.3
)

split_chapter 7 TIMES

TIMES=(
00:00:04.2
00:00:06.8
00:00:11.3
00:00:16.8
00:00:20.5
00:00:25
00:00:32.4
00:00:38.3
00:00:43.2
00:00:48.3
00:00:52.3
00:00:56.6
00:01:04.5
00:01:08.7
00:01:12.3
00:01:15.7
00:01:26.9
00:01:31.9
00:01:38.2
00:01:42.4
00:01:50.2
00:01:54.7
00:01:59.5
00:02:03.2
00:02:12.6
00:02:16.4
00:02:21.7
00:02:30.7
00:02:40.9
00:02:46.9
00:02:52.8
00:02:58.1
00:03:07.3
00:03:11.3
00:03:16.3
00:03:20.6
00:03:25.2
)

split_chapter 8 TIMES

TIMES=(
00:00:05.1
00:00:07.9
00:00:11.9
00:00:15
00:00:18.2
00:00:22.4
00:00:25.8
00:00:28.6
00:00:31.9
00:00:36.3
00:00:40.7
00:00:45.4
00:00:48.7
00:00:52.8
00:00:56.9
00:01:00.3
00:01:03.2
00:01:07
00:01:10.2
00:01:13.1
00:01:15.9
00:01:19.8
00:01:23.8
00:01:26.6
00:01:30.3
00:01:33.4
00:01:36.9
00:01:40.2
00:01:44.9
00:01:49
00:01:53.2
00:01:57.6
00:02:01.5
00:02:05.8
00:02:09.9
00:02:13.7
00:02:17.7
)

split_chapter 9 TIMES

TIMES=(
00:00:04.5
00:00:08.6
00:00:12.5
00:00:16.9
00:00:22.2
00:00:27.2
00:00:30.9
00:00:37.8
00:00:42.9
00:00:47.7
00:00:52.4
00:00:59.8
00:01:04.6
00:01:10.5
00:01:16
00:01:22.5
00:01:28.5
00:01:34.5
00:01:39.7
00:01:43.7
00:01:48.2
00:01:52.9
00:01:57.7
00:02:03
00:02:09.8
00:02:16.8
00:02:22.7
00:02:26.8
00:02:32.1
00:02:40.1
00:02:46.7
00:02:57.4
00:03:02.1
00:03:06.4
00:03:10
00:03:14.8
00:03:19.3
)

split_chapter 10 TIMES

TIMES=(
00:00:08.5
00:00:11.5
00:00:18.5
00:00:22.7
00:00:27.7
00:00:32.2
00:00:36.7
00:00:40
00:00:43.5
00:00:47.3
00:00:53
00:00:58.7
00:01:03.5
00:01:07.1
00:01:10.6
00:01:14.7
00:01:18.4
00:01:21.8
00:01:25.8
00:01:30.7
00:01:36.8
00:01:40.8
00:01:44.9
00:01:49.1
00:01:53.9
00:01:57.6
00:02:03.3
00:02:07.1
00:02:10.4
00:02:15.1
00:02:23.8
00:02:30
00:02:36.5
00:02:40.7
00:02:44.5
00:02:47.7
00:02:51.7
)

split_chapter 11 TIMES

TIMES=(
00:00:03.4
00:00:08.3
00:00:13.5
00:00:20
00:00:23.7
00:00:30
00:00:34.5
00:00:38.4
00:00:42.4
00:00:46.6
00:00:52.2
00:00:57
00:01:01.4
00:01:04.8
00:01:08.7
00:01:13.3
00:01:18.6
00:01:22.2
00:01:27.2
00:01:33.8
00:01:37.7
00:01:42.4
00:01:46.5
00:01:51.5
00:01:56.4
00:02:02.1
00:02:07.4
00:02:12.4
00:02:18.6
00:02:23.6
00:02:32.3
00:02:37.1
00:02:41.1
00:02:47
00:02:51.4
00:02:56.6
00:03:03.6
)

split_chapter 12 TIMES

TIMES=(
00:00:04.7
00:00:07.9
00:00:11.7
00:00:18.4
00:00:24
00:00:29.1
00:00:40.7
00:00:47.1
00:00:52.2
00:00:59
00:01:08.8
00:01:14.3
00:01:17.6
00:01:20.2
00:01:23.1
00:01:27.1
00:01:31
00:01:35
00:01:39
00:01:43.5
00:01:48.3
00:01:53.1
00:01:59
00:02:09
00:02:15.3
00:02:21.4
00:02:27
00:02:31.8
00:02:38.7
00:02:44.8
00:02:51
00:02:54.5
00:02:59.6
00:03:06.6
00:03:11.3
00:03:16.2
00:03:21.5
)

split_chapter 13 TIMES

TIMES=(
00:00:06.2
00:00:09.7
00:00:13.9
00:00:21
00:00:25.1
00:00:31.5
00:00:38.4
00:00:43.8
00:00:50
00:00:54.3
00:00:58.7
00:01:03.5
00:01:08.5
00:01:12.6
00:01:16.8
00:01:24.2
00:01:31.9
00:01:36.8
00:01:43.4
00:01:48.1
00:01:55.9
00:01:59.9
00:02:05.9
00:02:10
00:02:13.3
00:02:17.3
00:02:21.2
00:02:24.1
00:02:28.1
00:02:32.5
00:02:35.9
00:02:44.7
00:02:48.9
00:02:53.8
00:02:57.2
00:03:05.5
00:03:10
)

split_chapter 14 TIMES

TIMES=(
00:00:05.7
00:00:12.1
00:00:17.4
00:00:20.7
00:00:24.7
00:00:29.3
00:00:33.5
00:00:36.7
00:00:41.2
00:00:46.1
00:00:49.6
00:00:53.4
00:00:57.6
00:01:03.7
00:01:08
00:01:12.4
00:01:16.7
00:01:23.9
00:01:28.6
00:01:34.6
00:01:40.7
00:01:44.5
00:01:48
00:01:53.1
00:01:59.4
00:02:04.4
00:02:13.1
00:02:16
00:02:19.1
00:02:23.5
00:02:33.3
00:02:40
00:02:47.7
00:02:56.7
00:03:03.2
00:03:10.1
00:03:14.7
)

split_chapter 15 TIMES

TIMES=(
00:00:06.1
00:00:09.1
00:00:12.6
00:00:15.9
00:00:21.6
00:00:28.8
00:00:32.5
00:00:36.6
00:00:39.9
00:00:43.2
00:00:51.2
00:00:55.7
00:01:00.6
00:01:07.7
00:01:14.2
00:01:18.8
00:01:23.2
00:01:27.4
00:01:31.4
00:01:36
00:01:40.5
00:01:45.2
00:01:49.9
00:01:54.6
00:02:00.9
00:02:06.9
00:02:11.4
00:02:15
00:02:21.1
00:02:26.2
00:02:30.2
00:02:36.5
00:02:40.8
00:02:45.1
00:02:51.4
00:02:56.5
00:03:00.9
)

split_chapter 16 TIMES

TIMES=(
00:00:04.9
00:00:08.1
00:00:11.5
00:00:15.3
00:00:18.4
00:00:21.7
00:00:28.1
00:00:34.7
00:00:42.4
00:00:51.5
00:00:58.5
00:01:04.3
00:01:07.5
00:01:14.9
00:01:23.6
00:01:27.2
00:01:30.3
00:01:38.5
00:01:42.7
00:01:48.3
00:01:52.5
00:02:00.1
00:02:08.6
00:02:12.8
00:02:16.3
00:02:21.2
00:02:25.2
00:02:28.3
00:02:38.5
00:02:41.5
00:02:45.1
00:02:49
00:02:52
00:02:56.6
00:03:00.3
00:03:03.7
00:03:07.1
)

split_chapter 17 TIMES

TIMES=(
00:00:07.1
00:00:10.6
00:00:14.3
00:00:18.5
00:00:22.2
00:00:27.5
00:00:33
00:00:39.1
00:00:44.4
00:00:48.8
00:00:52.3
00:00:57
00:01:01.2
00:01:07
00:01:12.4
00:01:16.2
00:01:19.7
00:01:23.1
00:01:26.4
00:01:30
00:01:33.7
00:01:38.6
00:01:46.7
00:01:52.3
00:01:59.1
00:02:04.6
00:02:10.2
00:02:15.9
00:02:21.4
00:02:26.5
00:02:30.7
00:02:36.9
00:02:42.3
00:02:46.4
00:02:51.1
00:02:55.9
00:02:59.8
)

split_chapter 18 TIMES

TIMES=(
00:00:08.2
00:00:12.2
00:00:16.7
00:00:20.8
00:00:25.1
00:00:28.7
00:00:33.6
00:00:37.9
00:00:42.5
00:00:48.4
00:00:55.5
00:01:02.3
00:01:08
00:01:14
00:01:19
00:01:24.5
00:01:31
00:01:36
00:01:40.7
00:01:46
00:01:50.5
00:01:56.3
00:02:02.2
00:02:06.6
00:02:12.6
00:02:16.6
00:02:20
00:02:24.6
00:02:30
00:02:35.5
00:02:39.6
00:02:42.8
00:02:47
00:02:52.4
00:02:56.9
00:03:00.6
00:03:05.6
)

split_chapter 19 TIMES

TIMES=(
00:00:05
00:00:13.3
00:00:23.2
00:00:30.1
00:00:33.7
00:00:39.3
00:00:43.5
00:00:53
00:00:58
00:01:07.9
00:01:17.6
00:01:26.4
00:01:32.3
00:01:36.6
00:01:41.1
00:01:49.8
00:01:54.3
00:02:00.9
00:02:07.5
00:02:13.1
00:02:17.9
00:02:22.1
00:02:26.5
00:02:31
00:02:38.2
00:02:46.6
00:02:51.5
00:02:56.8
00:03:01.1
00:03:05
00:03:10.6
00:03:16.5
00:03:20.6
00:03:26.1
00:03:30.1
00:03:36.4
00:03:42.2
)

split_chapter 20 TIMES

TIMES=(
00:00:06.1
00:00:09.6
00:00:15.9
00:00:21.7
00:00:27.9
00:00:33.4
00:00:38.5
00:00:46.1
00:00:51.4
00:00:54.8
00:01:01
00:01:05.1
00:01:08.7
00:01:13.1
00:01:17
00:01:30.7
00:01:34
00:01:38.4
00:01:42.9
00:01:47.5
00:01:51.6
00:01:56.1
00:02:02.4
00:02:08.5
00:02:12.8
00:02:16.3
00:02:20.7
00:02:25.6
00:02:28.9
00:02:32.9
00:02:36.4
00:02:43.4
00:02:48.5
00:02:54.1
00:03:01.4
00:03:05.8
00:03:10.9
)

split_chapter 21 TIMES

TIMES=(
00:00:11.2
00:00:15.3
00:00:20.8
00:00:28.3
00:00:35.1
00:00:41.8
00:00:48.5
00:00:54
00:00:59.4
00:01:04.5
00:01:10
00:01:15.2
00:01:21.5
00:01:28.8
00:01:33.8
00:01:39.4
00:01:46.6
00:01:52.4
00:01:59.1
00:02:05.5
00:02:09.2
00:02:13.8
00:02:17.9
00:02:22
00:02:27.1
00:02:33.4
00:02:37.9
00:02:41.8
00:02:45.5
00:02:49.2
00:02:54.1
00:02:59.9
00:03:03.8
00:03:07.8
00:03:12.7
00:03:17.6
00:03:22.2
)

split_chapter 22 TIMES

TIMES=(
00:00:05.2
00:00:11.1
00:00:17.1
00:00:22.7
00:00:29
00:00:33.7
00:00:38.4
00:00:43.2
00:00:49.2
00:00:53.8
00:00:58.6
00:01:03.1
00:01:09
00:01:13.1
00:01:17.3
00:01:22
00:01:28.8
00:01:34.4
00:01:38.7
00:01:43.6
00:01:52.4
00:01:56.8
00:02:01.3
00:02:05.5
00:02:10.1
00:02:15.6
00:02:21.5
00:02:27.2
00:02:32.1
00:02:36.5
00:02:44.9
00:02:50.8
00:02:57.2
00:03:02.4
00:03:06.8
00:03:11.9
00:03:16.6
)

split_chapter 23 TIMES

TIMES=(
00:00:06
00:00:09.6
00:00:13
00:00:16.8
00:00:20.5
00:00:24.2
00:00:28.2
00:00:31.6
00:00:35.5
00:00:39.7
00:00:45.3
00:00:50.4
00:00:54.1
00:00:59.6
00:01:03.8
00:01:07.7
00:01:12.6
00:01:17
00:01:20.8
00:01:24.7
00:01:29.6
00:01:33.6
00:01:37
00:01:41.4
00:01:47.1
00:01:53.4
00:01:58
00:02:03.3
00:02:07.7
00:02:12.1
00:02:14.9
00:02:17.2
00:02:20.5
00:02:24
00:02:27.8
00:02:35
00:02:45.7
)

split_chapter 24 TIMES

TIMES=(
00:00:05.5
00:00:08.6
00:00:11.3
00:00:14.7
00:00:18.5
00:00:23.5
00:00:28.8
00:00:33.4
00:00:37.6
00:00:43.6
00:00:50.2
00:00:54.6
00:00:59.2
00:01:03.3
00:01:07
00:01:12.2
00:01:18.3
00:01:22.2
00:01:27.5
00:01:32.4
00:01:36
00:01:39
00:01:44
00:01:47.8
00:01:53.6
00:02:01.4
00:02:07
00:02:12.4
00:02:20.5
00:02:26.6
00:02:32.5
00:02:39.2
00:02:44
00:02:51.9
00:02:58.1
00:03:02.8
00:03:09
)

split_chapter 25 TIMES

TIMES=(
00:00:06.1
00:00:11.9
00:00:17.5
00:00:21.6
00:00:28.3
00:00:33.6
00:00:42.6
00:00:52
00:00:59.4
00:01:05.6
00:01:10.2
00:01:15
00:01:19.2
00:01:23.5
00:01:29.5
00:01:37
00:01:43.2
00:01:51.7
00:01:57.6
00:02:02.5
00:02:08.8
00:02:20.3
00:02:24.9
00:02:30.8
00:02:39.8
00:02:46.6
00:02:52.3
00:03:04
00:03:11
00:03:16.9
00:03:23.4
00:03:28.6
00:03:34.2
00:03:39.7
00:03:44.4
00:03:50.4
00:03:57.8
)

split_chapter 26 TIMES

