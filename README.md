# video-server
Video server for downloaded videos like TV recordings (see [video-dl](https://github.com/vogler/video-dl)).

Why?
1. Experiment with player features I'd like to have for every video
2. Not everything is available on YouTube
3. Media servers like [Jellyfin](https://github.com/jellyfin/jellyfin), [Plex](https://www.plex.tv/) etc. work fine for Movies/Shows, but are pretty slow or not ideal for random video files.

Goals:

- List videos in folder with thumbnail
- Track what was watched (incl. which regions of a video) per user
- Player features like YouTube
  - Thumbnails on progress bar
  - Generated closed captions / subtitles
  - Keyboard shortcuts (arrows, j/k/l)
  - Adjust preferred playback speed
- Advanced player features
  - Skip intro/outro, pauses
  - Skip ads
    - [SponsorBlock](https://github.com/ajayyy/SponsorBlock) for YouTube
    - [YouTV](https://www.youtv.de/) has markers for ads in their UI
  - Show clickable transcript like [Coursera](https://www.coursera.org/)
  - Show waveform like [SoundCloud](https://soundcloud.com/)
  - Show played time ranges like on [bilibili](https://www.bilibili.com/)
  - Adjust speed by spoken wpm
- Search/organization
  - Search transcripts of all all (watched) videos ([example](https://github.com/cmf/huberman) using `yt-dlp`)
  - YouTube
    - Statistics of (not) watched videos: time left to watch, how much time per day, how much time saved by speedup, how much time skipped etc., maybe play around with data for improving recommendations
    - Better sorting/filtering/statistics of video lists
    - Group similar videos by meta-data (length, title, description, category) or even content from transcript

### Related

Alternative YouTube clients:
- [Overview](https://alternativeto.net/category/video/youtube-client/)
- Android / TV:
  - https://youtubevanced.com <- using on Android with SponsorBlock, [discontinued](https://github.com/TeamVanced/VancedManager)
  - https://github.com/TeamNewPipe/NewPipe 23.4k Android
  - https://github.com/yuliskov/SmartTubeNext 10.1k Android/TV <- using on FireTV Stick 4K Max
  - https://github.com/libre-tube/LibreTube 5k Android
- Web:
  - https://github.com/FreeTubeApp/FreeTube 11k
  - https://github.com/TeamPiped/Piped 7k
- Terminal:
  - https://github.com/mps-youtube/yewtube 7.8k

Used in browser:
- https://github.com/igrigorik/videospeed Video Speed Controller extension to change speed of every video
- [video-scroll-seek.tamper.js](https://gist.github.com/vogler/b7c66088cd22f899496f353d5295b7ad) Tampermonkey: video: scroll=seek - Scrolling a video seeks back/forward
- [youtube-progress-always.tamper.js](https://gist.github.com/vogler/f0bba0a52a6fed61afab19245e72b5d4) Tampermonkey: YouTube: always show an additional progress bar below the video (not just on mouse move or pause)
- [youtube-time-left.tamper.js](https://gist.github.com/vogler/451aa48d0af7b659e391fdbeeea0d9d8) Tampermonkey: YouTube: show time left in title
- [youtube-watch-later-status.tamper.js](https://gist.github.com/vogler/aeeb2078d2e30ea5aa0240c0320fc35b) Tampermonkey: YouTube: button for Watch Later (shows status, allows to toggle)

Video players used for local files:
- macOS: [IINA](https://github.com/iina/iina)
- Windows: [PotPlayer](https://potplayer.daum.net/)
- Linux: [mpv](https://github.com/mpv-player/mpv)

Further resources:
- https://github.com/krzemienski/awesome-video A curated list of awesome streaming video tools, frameworks, libraries, and learning resources.
- https://github.com/jrtechs/HomeBrewPlex similar idea, simple video hosting with node, no special player features
- https://github.com/streamlink/streamlink CLI utility which pipes video streams from various services into a video player
- https://github.com/4gray/iptvnator IPTV player application (PWA/Electron), supports m3u and m3u8 playlists, favorites, TV guide, TV archive/catchup…
