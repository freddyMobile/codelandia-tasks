import 'dart:io';
import 'dart:math';

void main() {
  stdout.writeln('Oyunu davam etdirmek isteyirsizse 1 eks halda 0 daxil edin!');
  userContinue = stdin.readLineSync().toString().trim() == '1' ? true : false;
  while (userContinue) {
    var rsc = Random();
    stdout.writeln('Secim edin:\n0-Rocks\n1-scissors\n2-paper');
    int userInput = int.parse(stdin.readLineSync().toString().trim());
    if (userInput >= 3) {
      print('Secim dogru deyil');
    } else {
      askChoice(userChoice: userInput, compChoice: rsc.nextInt(3));
      stdout.writeln(
          'Oyunu davam etdirmek isteyirsizse 1 eks halda 0 daxil edin!');
      userContinue =
          stdin.readLineSync().toString().trim() == '1' ? true : false;
    }
    print(
        'Yekun hesab: User ${opponentCredentials['userPoints']} - ${opponentCredentials['compPoints']} Comp');
  }
}

bool userContinue = true;
int gameCount = 0;
Map<String, int> opponentCredentials = {
  'userPoints': 0,
  'compPoints': 0,
};
void askChoice({
  required int userChoice,
  required int compChoice,
}) {
  gameCount++;
  if ((userChoice == compChoice)) {
    print(
        'User $userChoice , komputer ise $compChoice secimini etdi.Hesab: User ${opponentCredentials['userPoints']} - ${opponentCredentials['compPoints']} Comp');
  } else if ((userChoice == 0 && compChoice == 1) ||
      (userChoice == 1 && compChoice == 2) ||
      (userChoice == 2 && compChoice == 0)) {
    opponentCredentials['userPoints'] = opponentCredentials['userPoints']! + 1;
    print(
        'User $userChoice , komputer ise $compChoice secimini etdi.Hesab: User ${opponentCredentials['userPoints']} - ${opponentCredentials['compPoints']} Comp');
  } else {
    opponentCredentials['compPoints'] = opponentCredentials['compPoints']! + 1;
    print(
        'User $userChoice , komputer ise $compChoice secimini etdi.Hesab: User ${opponentCredentials['userPoints']} - ${opponentCredentials['compPoints']} Comp');
  }
}
















// Rocks, Scissors, Paper
// 1.User komputerə qarşı oynuyur
// 2.Komputerin seçimləri təsadüfüdür, lakin user seçimini daxil etməlidi
// 3.Oyun davamm etdiyi müddətcə hesab tutulamalıdır Məs: User 1 - 2 Comp
// 0-Rocks
// 1-scissors
// 2-paper
//paper -- rock =paper
//paper -- scissors=scissors
// rock -- sciessers=rock