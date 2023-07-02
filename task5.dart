// Random()
// List.generate()
// nextInt()
// base64UrlEncode()
// shuffle()

// Bunlardan istifadə edərək, istifadəçi üçün şifrə yaradan proqram hazırlamaq tələb olunur.
// İstifadəçiyə 3 seçim verilir: zəif, orta və güclü şifrə.  Şifrə random şəkildə təyin olunur və təkrarlanmamalıdır.
import 'dart:io';
import 'dart:math';
import 'dart:convert';

enum PasswordType {
  weak,
  normal,
  strong,
  none,
}

void main() {
  takeUserInput();
}

void takeUserInput() {
  stdout.writeln(
      'Sizin 3 sifre secim sansiniz var:\nzeif sifre ucun weak,\nnormal sifre ucun normal,\nguclu sifre ucun strong yazin!\nQeyd:Telimatlardan kenar yazdiginiz emr yerine yetirilmeyecek!!!');
  String userInput = stdin.readLineSync().toString().toLowerCase().trim();
  askUserPasswordType(type: userInput);
}

String messageToUser(String message) {
  return (message);
}

void askUserPasswordType({required String type}) {
  if (type == 'weak') {
    print(messageToUser('Zeif tipli sifre secdiniz'));
    print(generatePasswordForEachUser(type: PasswordType.weak));
  } else if (type == 'normal') {
    print(messageToUser('Orta tipli sifre secdiniz'));
    print(generatePasswordForEachUser(type: PasswordType.normal));
  } else if (type == 'strong') {
    print(messageToUser('Guclu sifre secdiniz'));
    print(generatePasswordForEachUser(type: PasswordType.strong));
  } else {
    print(messageToUser(
        'Sizin secdiyiniz sifre tipi formata uygun deyil.Zehmet olmasa telimata dogru emel edin!'));
    print(generatePasswordForEachUser(type: PasswordType.none));
  }
}

String generatePasswordForEachUser({
  required PasswordType type,
  //int minCharacter = 7,
  //int maxCharacter = 15,
  //bool isMin = false
  int characterCount = 10,
}) {
  List<int> passwordList = [];
  String password = '';
  var rng = Random();
  // int maxChar = isMin
  //     ? minCharacter
  //     : ((rng.nextInt(maxCharacter + 1) - rng.nextInt(minCharacter + 1)) < 0
  //         ? maxCharacter
  //         : (rng.nextInt(maxCharacter + 1) - rng.nextInt(minCharacter + 1)));
  if (type == PasswordType.weak) {
    //Eger sifre zeifdirse isMin ve ya isMax sayina uygun yalniz reqemlerle sifre alinir.
    for (int i = 0; i < characterCount; i++) {
      //burada yalniz Random() kitabxanasi isleyir cunku sifre zeif olmalidir.
      passwordList.add(rng.nextInt(10));
      password += ' ${passwordList[i]}';
    }
    return password;
  } else if (type == PasswordType.normal) {
    //burada hem random, hem List.generate hem de base64UrlEncode() isleyir
    passwordList = List.generate(
        characterCount, (index) => index * rng.nextInt(10),
        growable: false);
    passwordList.shuffle();
    password = base64Encode(passwordList);
    return password;
  } else if (type == PasswordType.strong) {
    passwordList = List.generate(characterCount,
        (index) => index * rng.nextInt(10) /* + rng.nextInt(10)*/,
        growable: true);
    print(passwordList);
    List<int> base64List = [];
    //passwordListin 70% ni base64 e ceviririk sonra ise shuffle edirik
    double base64AlterNumber = passwordList.length *
        0.7; //bu double olduguna gore bunu asagidaki kimi inte ceviririk
    int base64AlterNumberInt = base64AlterNumber.round();

    for (int i = 0; i < base64AlterNumberInt; i++) {
      int randomedIndex = rng.nextInt(passwordList.length);
      base64List.add(passwordList[randomedIndex]);
      print(base64List);
      passwordList.removeAt(randomedIndex);

      print('$passwordList  password list azalir');
    }
    String base64String = base64Encode(base64List);
    List<String> lastPasswordList = base64String.split('');
    print('lastPasswordList  budur qaqa $lastPasswordList');
    for (int i = 0; i < passwordList.length; i++) {
      lastPasswordList.add(passwordList[i].toString());
      lastPasswordList.shuffle();
    }
    print(lastPasswordList);
    return lastPasswordList.join();
  } else {
    return messageToUser(
        'type ${PasswordType.none} oldugu ucun sifre teyin edile bilmez');
  }
}
