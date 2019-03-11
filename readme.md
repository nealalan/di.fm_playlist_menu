# [nealalan.github.io](https://nealalan.github.io)/[di.fm_playlist_menu](https://nealalan.github.io/di.fm_playlist_menu) ([repo](https://github.com/nealalan/di.fm_playlist_menu))

## Prereqs:
- Have a [https://di.fm](https://di.fm) Premium Account
- Install [mpv - The command line media player](https://mpv.io/)

## Setup:
1. Pull or copy the .sh files to a project folder from the [repo](https://github.com/nealalan/di.fm_playlist_menu)
3. If you want to change the stations, to know what data to add accuerately, see the "Adding Stations:" below
2. Run `chmod +x *.sh`
3. Browse to [https://www.di.fm/settings](https://www.di.fm/settings): Player Settings: Listen Key
4. Copy the key
5. Run `./build_pls_di.sh`
6. Paste in the Listen Key when prompted

![](https://github.com/nealalan/di.fm_playlist_menu/blob/master/images/Screen%20Shot%202019-03-10%20at%209.24.02%20PM.jpg?raw=true)

## Use: 
1. Run `./di.sh`
2. Choose the number you want to listen to
3. Use the [standard controls that are a part of mpv](https://mpv.io/manual/master/) (q = QUIT)
3. Choose another channel or `^C` to exit the menu

![](https://github.com/nealalan/di.fm_playlist_menu/blob/master/images/Screen%20Shot%202019-03-10%20at%209.16.48%20PM.jpg?raw=true)

## Adding Stations:
To add a station you need to download the defaul playlist from [di.fm](https://www.di.fm/settings). This will work in your menu, however to automate the "rebuilding" of the playlists, you will want to extract the appropriate data.
1. Browse to [di.fm settings](https://www.di.fm/settings): External Player Settings
2. Select "Single Channel" radio button
3. Choose a channel
4. Choose the stream quality (NOTE: If you listen at coffee shops, you may have hiccups in the caching 320k stream)
5. Click "Download .pls file" and save it into the approriate folder
6. Extract the fields to match the arrays in build_pls_di.sh: station, stations_title, stations_file_name
7. Make sure you add them in the right order or your playlists will build with the wrong names and links

## Notes: 
- If you don't like a station, you can delete that individual playlist file.
- If you want to edit the stations or if your API KEY changes, delete all .pls files, modify the arrays (all 3) in build_pls_di.sh, Run the Setup again.

[[EDIT](https://github.com/nealalan/di.fm_playlist_menu/edit/master/readme.md)]
