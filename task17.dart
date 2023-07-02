// Task: Musiqi pleyer proqramı

// Təlimatlar:
// a) Playable abstract classını yaradın
// classın aşağıdakı metodları var:
// 1- play():  Musiqini  başladır
// 2- pause(): Musiqini saxlayır
// 3- stop():  Musiqini dayandırır

// b) Playable classı impliment edən MediaFile sinifi yaradın
// classın aşağıdakı atributları var:
// 1- title:    Media faylının başlığı
// 2- duration: Media faylının saniyələrlə müddəti
// 3- filePath: Media faylının fayl yolu və ya URL-i

// c)  Playlistdəki musiqiləri qarışdırmağa imkan verən Shuffleable mixin yaradın
// mixinin aşağıdakı metodu var:
// 1- shufflePlaylist(parametr){}

// d) MediaFile sinfindən miras alan və Shuffleable mixin`dən istifadə edən Playlist  sinifini yaradın
// classın aşağıdakı atributları var:
// 1- name:         Pleylistin adı
// 2- mediaFiles: Pleylistdəki musiqi fayllarının siyahısı
// classın aşağıdakı metodu var:
// playPlaylist(){}

abstract class Playable {
  void play();

  void pause();

  void stop();
}

class MediaFile implements Playable {
  String title;
  Duration? duration;
  String filePath;

  MediaFile(
      {required this.duration, required this.filePath, required this.title});

  @override
  void pause() {
    // TODO: implement pause
    print('Mahni pause $title');
  }

  @override
  void play() {
    // TODO: implement play
    print('Mahni basladi $title');
  }

  @override
  void stop() {
    // TODO: implement stop
    print('mahni dayandi $title');
  }
}

mixin Shuffleable {
  void shufflePlaylist(List<String> songs) {
    songs.shuffle();
    print(songs);
  }
}
