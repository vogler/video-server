# video-server
Video server for downloaded videos like TV recordings (see [video-dl](https://github.com/vogler/video-dl)).

Why?
1. Experiment with player features I'd like to have for every video
2. Not everything is available on YouTube
3. Media servers like [Jellyfin](https://github.com/jellyfin/jellyfin), [Plex](https://www.plex.tv/) etc. work fine for Movies/Shows, but are pretty slow or not ideal for random video files.

Goals:

- List videos in folder with thumbnail
- Track what was watched (incl. which regions of a video) per user
- Player features like YouTube:
  - Thumbnails on progress bar
  - Generated closed captions / subtitles
- Advanced player features:
  - Skip intro/outro, pauses
  - Skip ads
    - [SponsorBlock](https://github.com/ajayyy/SponsorBlock) for YouTube
    - [YouTV](https://www.youtv.de/) has markers for ads in their UI
  - Show clickable transcript like [Coursera](https://www.coursera.org/)
  - Show waveform like [SoundCloud](https://soundcloud.com/)

### Related

Alternative YouTube clients:
- [Overview](https://alternativeto.net/category/video/youtube-client/)
- Android / TV:
  - https://youtubevanced.com <- using on Android with SponsorBlock, [discontinued](https://github.com/TeamVanced/VancedManager)
  - https://github.com/TeamNewPipe/NewPipe 23.4k Android
  - https://github.com/yuliskov/SmartTubeNext 10.1k Android/TV <- using on FireTV Stick 4K Max
  - https://github.com/libre-tube/LibreTube 5k Android
- Web:
  - https://github.com/FreeTubeApp/FreeTube 7k
  - https://github.com/TeamPiped/Piped 4.3k

Video players used for local files:
- macOS: [IINA](https://github.com/iina/iina)
- Windows: [PotPlayer](https://potplayer.daum.net/)
- Linux: [mpv](https://github.com/mpv-player/mpv)
