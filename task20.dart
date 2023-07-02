// Task: Messsage app

// Təlimatlar:

// a) Message classını yaradın
// classın aşağıdakı atributları var:
// 1- sender -     göndərən
// 2- recipient -  qəbul edən
// 3- timestamp -  göndərilən vaxt

// b)  Message classı extend edən ChatApp <T>  class yaradın
// classın aşağıdakı atributları var:
// 1- messages - mesajların siyahısı
// classın aşağıdakı metodları var:
// 1- addMessage(parametr)- siyahıya mesajları əlavə edir
// 2- countOfTotalMEssages()- mesajların ümumi sayın göstərir

// b)  Message classı extend edən TextMessage class yaradın
// classın aşağıdakı atributları var:
// 1- text

// c)  Message classı extend edən İmageMessage class yaradın
// classın aşağıdakı atributları var:
// 1- imageUrl

// d)  Message classı extend edən AudioMessage class yaradın
// classın aşağıdakı atributları var:
// 1- audioUrl
// 2- duration

void main() {
  ChatApp<Message> whatsapp = ChatApp<Message>(
    messages: [],
  );

  whatsapp.addMessage(TextMessage(
      text: 'Salam necesen?',
      recipent: 'Fariz',
      sender: 'Farid',
      timestamp: DateTime.now()));
  whatsapp.addMessage(ImageMessage(
      imageUrl: 'http/sdjksjd/.com',
      recipent: 'Farid',
      sender: 'Fariz',
      timestamp: DateTime.now()));
  whatsapp.addMessage(AudioMessage(
      audioUrl: 'hsjdhk.avi',
      duration: Duration(seconds: 20),
      recipent: 'Farid',
      sender: 'Fariz',
      timestamp: DateTime.now()));

  whatsapp.countOfTotalMEssages();

  for (int i = 0; i < whatsapp.messages.length; i++) {
    print(
        '${i + 1}-ci mesaj ${whatsapp.messages[i].sender} terefinden ${whatsapp.messages[i].recipent} adli sexse ${whatsapp.messages[i].timestamp.second} zamaninda gonderilmisdir');
    print('-' * 100);
  }
}

class Message {
  String sender;
  String recipent;
  DateTime timestamp;
  Message(
      {required this.recipent, required this.sender, required this.timestamp});
}

class ChatApp<T> extends Message {
  List<T> messages;
  ChatApp({
    required this.messages,
  }) : super(recipent: '', sender: '', timestamp: DateTime.now());

  void addMessage(T message) {
    messages.add(message);
  }

  void countOfTotalMEssages() {
    print('${messages.length}  umumi mesaj sayi');
  }
}

class TextMessage extends Message {
  String text;
  TextMessage(
      {required this.text,
      required super.recipent,
      required super.sender,
      required super.timestamp});
}

class ImageMessage extends Message {
  String imageUrl;
  ImageMessage(
      {required this.imageUrl,
      required super.recipent,
      required super.sender,
      required super.timestamp});
}

class AudioMessage extends Message {
  String audioUrl;
  Duration duration;
  AudioMessage(
      {required this.audioUrl,
      required this.duration,
      required super.recipent,
      required super.sender,
      required super.timestamp});
}
