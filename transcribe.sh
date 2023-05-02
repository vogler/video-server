#!/bin/bash

if ! command -v ffmpeg &>/dev/null; then
  echo "ffmpeg is required: https://ffmpeg.org";
  exit 1
fi;

input=$1
if [ ! -f "$1" ]; then
  echo "Input video $1 does not exist!"
  echo "Usage example: ./transcribe.sh video.mp4"
  exit 1
fi

# extract audio track unchanged:
# ffmpeg -i ~/Downloads/Wirtschaft\ vor\ acht-12619043.mp4 -vn -acodec copy output-audio.aac

# whisper.cpp runs with 16kHz 1-channel 16-bit WAV files
# ffmpeg -i output-audio.aac -ar 16000 -ac 1 -c:a pcm_s16le output.wav

ffmpeg -i "$input" -vn -ar 16000 -ac 1 -c:a pcm_s16le -y -hide_banner -loglevel error "$input.wav"


# https://github.com/ggerganov/whisper.cpp
if [ ! -d whisper.cpp ]; then
  echo "Setup whisper.cpp"

  git clone https://github.com/ggerganov/whisper.cpp.git
  cd whisper.cpp

  # | Model  | Disk   | Mem     |
  # | ---    | ---    | ---     |
  # | tiny   |  75 MB | ~125 MB |
  # | base   | 142 MB | ~210 MB |
  # | small  | 466 MB | ~600 MB |
  # | medium | 1.5 GB | ~1.7 GB |
  # | large  | 2.9 GB | ~3.3 GB |

  # Download model:
  bash ./models/download-ggml-model.sh base

  # Compile:
  make

  cd ..
fi

./whisper.cpp/main -m ./whisper.cpp/models/ggml-base.bin -l de -ovtt "$input.wav"

# -m FNAME,  --model FNAME       [models/ggml-base.en.bin] model path
# -l LANG,   --language LANG     [en     ] spoken language ('auto' for auto-detect) - .en models only support English
# -otxt,     --output-txt        [false  ] output result in a text file
# -ovtt,     --output-vtt        [false  ] output result in a vtt file
# -osrt,     --output-srt        [false  ] output result in a srt file

rm -f "$input.wav"
