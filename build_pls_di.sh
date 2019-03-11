#!/bin/bash

# NEAL DREHER 2019-03-10
# Create a bunch of playlists for di.fm
# Use di.sh to list and play a playlist/station
# Note: Don't forgot to chmod +x *.sh

filename_prefix=DI.FM.
filename_suffix=.pls
baseurl1=http://prem1.di.fm:80/
baseurl4=http://prem4.di.fm:80/

stations=(
00sclubhits
ambient
atmosphericbreaks
breaks
chillntropicalhouse
chilloutdreams
chillout_hi
chillstep_hi
classictrance
club
djmixes
edm
electronics
epictrance_hi
futurebass
house
lounge
minimal
classicelectronica_hi
progressive_hi
russianclubhits_hi
soulfulhouse
trance_hi
undergroundtechno_hi
)

stations_title=(
'DI.FM - 00s Club Hits'
'DI.FM - Ambient'
'DI.FM - Atmospheric Breaks'
'DI.FM - Breaks'
'DI.FM - Chill & Tropical House'
'DI.FM - Chillout Dreams'
'DI.FM - Chillout'
'DI.FM - Chillstep'
'DI.FM - Classic Trance'
'DI.FM - Club Sounds'
'DI.FM - DJ Mixes'
'DI.FM - EDM Hits'
'DI.FM - Electronics'
'DI.FM - Epic Trance'
'DI.FM - Future Bass'
'DI.FM - House'
'DI.FM - Lounge'
'DI.FM - Minimal'
'DI.FM - Oldschool Techno & Trance'
'DI.FM - Progressive'
'DI.FM - Russian Club Hits'
'DI.FM - Soulful House'
'DI.FM - Trance'
'DI.FM - Underground Techno'
)

stations_file_name=(
DI.FM.00s.Club.Hits
DI.FM.Ambient
DI.FM.Atmospheric.Breaks
DI.FM.Breaks
DI.FM.Chill.and.Tropical.House
DI.FM.Chillout.Dreams
DI.FM.Chillout
DI.FM.Chillstep
DI.FM.Classic.Trance
DI.FM.Club.Sounds
DI.FM.DJ.Mixes
DI.FM.EDM.Hits
DI.FM.Electronics
DI.FM.Epic.Trance
DI.FM.Future.Bass
DI.FM.House
DI.FM.Lounge
DI.FM.Minimal
DI.FM.Oldschool.Techno.and.Trance
DI.FM.Progressive
DI.FM.Russian.Club.Hits
DI.FM.Soulful.House
DI.FM.Trance
DI.FM.Underground.Techno
)

echo -n "Enter your DI.FM key:"
read DI_KEY

i=0
while [ $i -lt "${#stations[@]}" ]
do

  cat << EOF > ${stations_file_name[$i]}$filename_suffix
  [playlist]
  NumberOfEntries=2
  File1=${baseurl1}/${stations[$i]}?${DI_KEY}
  Title1=${stations_title[$i]}
  Length1=0
  File2=${baseurl4}/${stations[$i]}?${DI_KEY}
  Title2=${stations_title[$i]}
  Length2=0
  Version=2
EOF

  echo "`expr $i + 1` Created: ${stations_file_name[$i]}$filename_suffix"
  i=`expr $i + 1`
done

echo " "
