# [nealalan.github.io](https://nealalan.github.io)/[di.fm_playlist_menu](https://nealalan.github.io/di.fm_playlist_menu)

## Prereqs:
- Have a [https://di.fm](https://di.fm) Premium Account
- Install [mpv - The command line media player](https://mpv.io/)

## Setup:
1. Pull or copy the .sh files to a project folder. 
2. Run `chmod +x *.sh`
3. Browse to [https://www.di.fm/settings](https://www.di.fm/settings): Player Settings: Listen Key
4. Copy the key
5. Run `./build_pls_di.sh`
6. Paste in the Listen Key when prompted

![](https://github.com/nealalan/di.fm_playlist_menu/blob/master/images/Screen%20Shot%202019-03-10%20at%209.24.02%20PM.jpg?raw=true)

## Use: 
1. Run `./di.sh`
2. Choose the number you want to listen to
3. ^C to exit

![](https://github.com/nealalan/di.fm_playlist_menu/blob/master/images/Screen%20Shot%202019-03-10%20at%209.16.48%20PM.jpg?raw=true)

## Notes: 
- If you don't like a station, you can delete that individual playlist file.
- If you want to edit the stations or if your API KEY changes, delete all .pls files, modify the arrays (all 3) in build_pls_di.sh, Run the Setup again.

[[EDIT](https://github.com/nealalan/di.fm_playlist_menu/edit/master/readme.md)]
