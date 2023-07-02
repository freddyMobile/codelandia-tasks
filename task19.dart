import 'task17.dart';

abstract class PLayable {
  void play();
  void pause();
  void stop();
}

class MediaFile implements Playable {
  String title;
  Duration duration;
  String filePath;

  MediaFile(
      {required this.duration, required this.filePath, required this.title});

  @override
  void pause() {
    // TODO: implement pause
  }

  @override
  void play() {
    // TODO: implement play
  }

  @override
  void stop() {
    // TODO: implement stop
  }
}

mixin Shuffleable {
  void shufflePlaylist(List parametr) {
    parametr.shuffle();
    print(parametr);
  }
}

class Playlist with Shuffleable implements MediaFile {
  @override
  Duration duration;

  @override
  String filePath;

  @override
  String title;

  String namePlaylist;
  List<MediaFile> mediaFiles;
  Playlist(
      {required this.duration,
      required this.filePath,
      required this.mediaFiles,
      required this.namePlaylist,
      required this.title});

  @override
  void shufflePlaylist(List parametr) {
    // TODO: implement shufflePlaylist
    super.shufflePlaylist(parametr);
  }

  @override
  void pause() {
    print('Mahni pause olundu');
  }

  @override
  void play() {
    print('Mahni basladi');
  }

  @override
  void stop() {
    print('mahni dayandi');
  }
}

void main() {
  Playlist pl1 = Playlist(
      duration: Duration(minutes: 2),
      filePath: 'aaaa',
      mediaFiles: [
        MediaFile(
            duration: Duration(), filePath: 'a', title: 'Nazende sevgilim')
      ],
      namePlaylist: 'Retro',
      title: 'dinleyin');

  print(pl1.mediaFiles);
}
