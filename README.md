# Baurne Again Media Downloading Script

Welcome to the Baurne Again Media Downloading Script! This script is designed to help beginners download videos easily using the command line in Linux. No advanced knowledge is needed—just a few straightforward commands!

## Features

- Automatically installs `yt-dlp` (a powerful video downloader) if it's not already installed.
- Checks for `ffmpeg`, a necessary tool for processing audio and video files, and installs it if missing.
- Downloads videos in various resolutions: 1080p, 720p, or 480p.
- Converts videos to MP3 audio format.
- Easy to use with only a few command-line arguments.

---

## Requirements

Before you use this script, make sure you have:

- A Linux operating system (like Ubuntu).
- Internet access for downloading the tools and videos.

---

## How to Use

1. **Download the Script:**
   - Click on the [Download](#) link to get the script file, or clone this repository using:
   ```bash
   git clone https://github.com/yourusername/Video-Downloader.git
   ```
   
2. **Make It Executable:**
   Change the script permission to make it executable by running:
   ```bash
   chmod +x bam.sh
   ```

3. **Run the Script:**
   You can run the script with different options depending on what you want to do.

   ### Download a Video in High Resolution

   To download a video at 1080p, 720p, or 480p, use the following syntax:
   ```bash
   ./bam.sh [resolution] [video_url]
   ```

   Replace `[resolution]` with:
   - `1080p-video` for 1080p resolution
   - `720p-video` for 720p resolution
   - `480p-video` for 480p resolution

   Replace `[video_url]` with the link to the video you want to download.

   **Example:** 
   ```bash
   ./bam.sh 1080p-video "http://example.com/video"
   ```

   ### Download Video as MP3

   If you want to download the video as an MP3 audio file, use:
   ```bash
   ./bam.sh mp3 [video_url]
   ```

   **Example:**
   ```bash
   ./bam.sh mp3 "http://example.com/video"
   ```

   ### Download with Default Quality

   If you only provide the URL, the script will download the video in the highest quality available:
   ```bash
   ./bam.sh "http://example.com/video"
   ```

---

## Example Commands

Here are some simple examples of how to use the script:

- **Download a video in 720p:**
  ```bash
  ./bam.sh 720p-video "http://example.com/video"
  ```

- **Convert a video to MP3:**
  ```bash
  ./bam.sh mp3 "http://example.com/video"
  ```

- **Download video in highest quality:**
  ```bash
  ./bam.sh "http://example.com/video"
  ```

---

## Notes

- The downloaded videos will be saved in your `Downloads/Videos` folder by default.
- Ensure you have the necessary permissions to run the script. If you encounter any issues, try running the command with `sudo`.

---

## Support

If you have any questions or need help, feel free to open an issue in this repository or leave a comment.

Happy downloading! 🎉

---

## Currently supporting downloads from

- **Youtube** (next update will include ability to download play-lists)

- **Pinterest** (you need the browser url not the shortened version offered by pinterest app. If you have the link to a pin from the app ? paste it on the browser and then copy the new link from the browser address bar.)