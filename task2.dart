// Task 2: İstifadəçidən ən azı 5 sözdən ibarət cümlə daxil etməyi tələb edən proqram yaradın.  Cümləni sözlərini əksinə sıralayan bir mesaj çap edin. Nümunə:
// dart programlaşdırma dilidir => dilidir proqramlaşdırma dart

//First way
import 'dart:io';

void main() {
  stdout.writeln(
      'In order to attend in a survey,it is mandatory to enter at least 5 wwords...');
  String longWord = stdin.readLineSync().toString();

  print(outputController(enteredWord: longWord));
}

String outputController({required String enteredWord}) {
  String message = '';
  List<String> separator = enteredWord.split(' ');
  if (separator.length < 5) {
    message = 'Enter at least 5 words...';
    return message;
  } else {
    List<String> reversedList = separator.reversed.toList();
    message = reversedList.join(' ');
    return message;
  }
}
