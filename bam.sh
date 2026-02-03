#!/bin/bash
if test -f $HOME/.local/bin/yt-dlp ; 
then echo "yt-dlp already present proceeding ............."
else echo "yt-dlp not present initiating download ..........." 
curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o $HOME/.local/bin/yt-dlp
chmod 764 ~/.local/bin/yt-dlp
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
fi
if dpkg -s ffmpeg &> /dev/null;
then ffmpeg -version | head -n 1
else echo -e "The package ffmpeg is required for the script to work.\nInitiaing ffmpeg install";
sudo apt install ffmpeg
fi
yt-dlp --version
case $1 in
"1080p-video")
echo "1080p Video Download Requested by the user"
yt-dlp --no-playlist --verbose --paths "$HOME/Downloads/Videos" -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' "$2";;
"720p-video")
echo "720p Video Download Requested by the user"
yt-dlp --no-playlist --verbose --paths "$HOME/Downloads/Videos" -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' "$2";;
"480p-video")
echo "480p Video Download Requested by the user"
yt-dlp --no-playlist --verbose --paths "$HOME/Downloads/Videos" -f 'bestvideo[height<=480]+bestaudio/best[height<=480]' "$2";;
"mp3")
echo "MP3 Conversion of video requested"
yt-dlp --no-playlist --verbose --paths "$HOME/Downloads/mp3" -f bestaudio --exec 'video={}; ffmpeg -i "$video" -q:a 0 "${video%.*}.mp3";rm "$video"' "$2";;
*)
echo "Default mode no-selection best quality"
yt-dlp --no-playlist --paths "$HOME/Downloads/Videos" "$1";;
esac

