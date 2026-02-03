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
#yt-dlp -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]'
#yt-dlp --verbose "$1"
case $1 in
"1080p-video")
echo "1080p Video Download Requested by the user"
yt-dlp --no-playlist --paths "~/Downloads/Videos" -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' "$2";;
"720p-video")
echo "720p Video Download Requested by the user"
yt-dlp --no-playlist --paths "~/Downloads/Videos" -f 'bestvideo[height<=720]+bestaudio/best[height<=720]' "$2";;
"mp3")
echo "MP3 Conversion of video requested";;
*)
echo "Default mode no-selection best quality"
yt-dlp --no-playlist --paths "~/Downloads/Videos" "$1";;
esac

