import 'dart:html';
import 'dart:io';
// main() {
//   print('aaaaaaaa');
//   a *= 2;
//   print(a);
//   print(a.runtimeType);
// }

// int a = 5;

//int number_of_donuts = 34; //snake case
//int NUMBER_OF_DONUTS = 40; // It is again snake case

//number-of-donuts = 34; it is called Kebab case but it is not supported in flutter

//String nameOfPerson  it is called camel case

// String NameOfPerson is called is Pascal case

// swich casede double yoxlamaq mumkun deyil arasdir!!!

// main() {
//   stdout.writeln('Yasinizi daxil edin');
//   int age = int.parse(stdin.readLineSync().toString());

//   print(checkUserAge(agee: age));
// }

// String checkUserAge({required int agee}) {
//   if (agee % 2 == 0) {
//     return 'Sizin yasiniz cutdur';
//   } else {
//     return 'Sizin yasiniz tekdir';
//   }
// }

//For the next lesson try to search split,join and reversed

// void main() {
//   stdout.writeln('Sizin adiniz nedir?');
//   String takenName = stdin.readLineSync().toString();
//   stdout.writeln('Nece yasiniz var?');
//   int takenAge = int.parse(stdin.readLineSync().toString());

//   print(detectHowManyYearLeftUntilHundred(name: takenName, age: takenAge));
// }

// String detectHowManyYearLeftUntilHundred(
//     {required String name, required int age}) {
//   int yearsUntilHundred = 100 - age;
//   String messageToUser =
//       '$name sizin $yearsUntilHundred il sonra 100 yasiniz olacaq...';
//   return messageToUser;
// }

// void main() {
//   String reversedWholeText = '';
//   stdout.writeln('birinci sozu daxil et');
//   String firstWord = stdin.readLineSync().toString();

//   stdout.writeln('ikinci sozu daxil et');
//   String secondWord = stdin.readLineSync().toString();

//   stdout.writeln('ucuncu sozu daxil et');
//   String thirdWord = stdin.readLineSync().toString();

//   stdout.writeln('dorduncu sozu daxil et');
//   String fourthword = stdin.readLineSync().toString();

//   stdout.writeln('besinci sozu daxil et');
//   String fifthword = stdin.readLineSync().toString();

//   print(concatenating(
//       w1: firstWord,
//       w2: secondWord,
//       w3: thirdWord,
//       w4: fourthword,
//       w5: fifthword));
// }

// String makeStringReverse({
//   required String word,
// }) {
//   String reversedSingleWord = '';
//   for (int i = word.length - 1; i >= 0; i--) {
//     reversedSingleWord += word[i];
//   }
//   return '$reversedSingleWord ';
// }

// String concatenating(
//     {required String w1,
//     required String w2,
//     required String w3,
//     required String w4,
//     required String w5}) {
//   String wholeText = '';
//   return wholeText +
//       makeStringReverse(word: w1) +
//       makeStringReverse(word: w2) +
//       makeStringReverse(word: w3) +
//       makeStringReverse(word: w4) +
//       makeStringReverse(word: w5);
// }

//togrullagayev@gmail.com togrulun maili githubda check ele

// camel case sTRING varTary
// snake case var_tary
// Kebab case var-tary
// Pascal case PascalCase

// void main() {
//   //print(checkSwitch(1));
// }

// int checkSwitch(int value) {
//   switch (value) {
//     case 1:
//       return 1;

//     case 2:
//       return 2;

//     default:
//       return 4;
//   }
// }

void main() {
  String value = 'a';

  switch (value) {
    case 'aa':
      print('aaa');
      break;
    default:
      print('aa');
  }
}
