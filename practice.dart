// import 'dart:io';
// import 'dart:math';
// // // void main() {
// // //   List<int> firstList = [];
// // //   //List<int> second = List.filled(5, 0, growable: true);

// // //   //var dat = second.followedBy([15, 20, 30]).toList();
// // //   //print(dat);
// // //   List<int> aa = List.generate(10, (index) => index, growable: true);
// // //   //second.insert(0, 7);
// // //   //print(second.getRange(0, second.length));
// // //   List<int> second = [1, 2, 3, 4];
// // //   print(second);
// // //   second.setRange(1, 3, [5, 6, 7, 8]);
// // //   second.fillRange(1, 3, 2);
// // //   print(second);
// // // // }
// // // void main() {
// // //   List<int> aa = [1, 2, 3, 4, 5];
// // //   print(aa);
// // //   aa.fillRange(0, aa.length, 5);

// // //   print(aa);
// // // }

// // class Olke {
// //   String? olkeAdi;
// //   Olke(this.olkeAdi);

// //   String get mesaj {
// //     return '$olkeAdi  yekdi';
// //   }
// // }

// // void main() {
// //   Olke myCountry = Olke('Azerbaijan');
// //   print(myCountry.mesaj);
// // }

// // Rocks, Scissors, Paper
// // User komputerə qarşı oynuyur
// // Komputerin seçimləri təsadüfüdür, lakin user seçimini daxil etməlidi
// // Oyun davamm etdiyi müddətcə hesab tutulamalıdır Məs: User 1 - 2 Comp

// //paper -- rock =paper
// //paper -- scissors=scissors
// // rock -- sciessers=rock

// int countGame = 0;
// int pointGamerUser = 0;
// int pointGamerComp = 0;
// Map<int,Map<String,dynamic>> userCredentials={

// };
// Map<int, String> gamesHistory = {};
// List<String> choices = ['rock', 'scissors', 'rock'];

// int compChoice = Random().nextInt(3);

// int userChoice = int.parse(stdin.readLineSync().toString().trim());
// String choiceOutput(int chc) {
//   if (compChoice == chc) {
//     userCredentials.addEntries(newEntries);
//     return choices[chc];
//   } else {
//     return 'Duzgun secim olmadi';
//   }
// }

// void findWinner() {
//   countGame += 1;
//   if (userChoice == compChoice) {
//     gamesHistory.addAll({countGame: 'Hesab beraberdir'});
//     print('Hesab beraberdir');

//     gamesHistory.addAll({countGame: 'equal'});
//   } else {
//     compareWinner();
//   }
// }

// void compareWinner() {
//   countGame += 1;
//   if (userChoice == 'rock' && compChoice == 'paper') {
//     print('komp qalib geldi');
//     pointGamerComp += 1;
// gamesHistory.addAll{countGame:};
//     print('user uduzdu');
//   } else if (userChoice == 'paper' && compChoice == 'scissors') {
//     print('komp qalib geldi');
//     pointGamerComp += 1;
//     print('user uduzdu');
//   } else if (userChoice == 'rock' && compChoice == 'scissors') {
//     print('user qalib geldi');
//     pointGamerUser += 1;
//     print('komp uduzdu');
//   }
// }

// void main() {}
