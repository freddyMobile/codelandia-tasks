// Task
// İstifadəçidən ədəd tələb edin. Sonra həmin ədədin bütün tam bölənlərinin siyahısını çap edən proqram yaradın.
// məs: 7, 1-ə tam bölünür.
// 7, 7-yə tam bölünür.
import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  List<int> fullDivisorWithoutRemainder = [];
  stdout.writeln('Salam daxil etmek istediyiniz bir eded yazin');
  int nomre = int.parse(stdin.readLineSync().toString());
  for (int i = 1; i <= nomre; i++) {
    if (nomre % i == 0) {
      fullDivisorWithoutRemainder.add(i);
      print(' $nomre  $i -e qaliqsiz bolunur.');
    }
  }
  print(
      '$nomre nin tam bolenlerinin listi budur... $fullDivisorWithoutRemainder');
}

// Random()
// List.generate()
// nextInt()
// base64UrlEncode()
// shuffle()

// var rng = Random();
// void main() {
//   print(rng.nextInt(100));
//   print(rng.nextDouble());
// }

// void main() {
//   List<dynamic> aa =
//       List.generate(10, (index) => index * index, growable: true);
//   aa.add(890);
//   print(aa);
// }

// void main() {
//   List<int> a = [1, 2, 3, 4, 5, 6, 7, 8];
//   a.shuffle();
//   print(a);
// }

// void main() {
//   //print(base64Url.encode(bytes));
//   print(base64.decode(url));
//   //print(base64UrlEncode(bytes));
// }

// //Years ago, when mailing functionality was introduced, so that was utterly text
// //based, as the time passed, need for attachments like image and media (audio,video etc)
// //came into existence. When these attachments are sent over internet (which is
// //basically in the form of binary data), the probability of binary data getting
// //corrupt is high in its raw form. So, to tackle this problem BASE64 came along
// List<int> bytes = [97, 99, 101];

// String url = 'facebook';
