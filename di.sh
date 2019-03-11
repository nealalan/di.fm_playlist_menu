#!/bin/bash

# NEAL DREHER 2019-03-10
# Play the created playlists for di.fm
# Use build_pls_di.sh to list and play a playlist/station
# Note: Don't forgot to chmod +x *.sh


PS3="Enter the number of the file you want to play: "
QUIT="QUIT THIS PROGRAM - I feel safe now."
touch "$QUIT"

select FILENAME in DI*;
do
  case $FILENAME in
        "$QUIT")
          echo "Exiting."
          break
          ;;
        *)
          echo "You picked $FILENAME ($REPLY)"
          mpv "$FILENAME"
          ;;
  esac
done
rm "$QUIT"
