// Satış platforması üçün kod yazılmalıdır.
// Tələblər:
// 1- Sayta daxil olarkən 2 seçim verməlidir : login ilə giriş və guest giriş
// 2- Login ilə girişdə, istifadəçi adı və porolu daxil edilməlidir.
// 3- İstifadəçi adı və ya parol: null və boş ola bilməz.
// 4- Girişdən sonra məhsulların siyahısı əks olunmalıdır.
// 5- Müştəri istədiyi məhsulu seçəndən sonra məhsulun məlumatları və qiyməti göstərilməlidir və  davam edib-etməyəcəyi soruşulmalıdır.
// 6- Davam etdiyi halda 2 seçim təklif olunur : Nağd və Kartla ödəmə
// 7- Nağd ödəmə zamanı 2 seçim verilir -  Çatdırlma və Özün gəl apar. Çatdırlma seçiləndə qiymətə 10 azn əlavə edilməlidir. Özün gəl aparda məhsulun qiyməti stabil qalır.
// 8- Kartla ödəmə zamanı 2 seçim təklif olunur: Birbaşa və taksit
// 9- Kartla birbaşa ödəniş zamanı məhsulun qiyməti stabil qalır və kart məlumatları tələb olunur.
// 10- Taksit seçildikdə 3 bank təklif olur: Birkart, Tamkart və Bolkart
// 11- Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür və qiymət stabil qalır.
// 12- Tamkart ilə 3, 6 və 12 ayllq ödəniş var. 12 aylıq seçildikdə  məhsulun qiymətinin üzərinə 25% əlavə olunur.
// 13- Bolkart ilə  3 və 6 aylıq ödəniş var.  6 aylıq seçildikdə hər ay üçün 10 azn əlavə olunur.

import 'dart:io';

void main() {
  stdout.writeln(
      'Sayta daxil olmaq ucun 2 giris novu vardir.Login ile girmek isteyirsizse 1 yazin,eks halda 2 yazin');
  String userChoice = stdin.readLineSync().toString().trim();
  withOrWithoutLogin(userChoice);
}

Map<String, String> userCredentials = {'username': 'Mr.Guest', 'password': ''};

Map<String, Map<String, dynamic>> products = {
  '1': {
    'price': 1000,
    'prodName': 'Apple Macbook M1/256/8 2020',
  },
  '2': {
    'price': 1500,
    'prodName': 'Apple Macbook M2/256/8 2022',
  },
  '3': {
    'price': 500,
    'prodName': 'Acer Nitro 5 i5-11 gen',
  },
  '4': {
    'price': 700,
    'prodName': 'Iphone-11-128-gb-black',
  },
};

Map<String, String> cardCredentials = {
  'cardOwner': '',
  'cvv': '',
  'cardNumber': ''
};

void withOrWithoutLogin(String number) {
  if (number == '1') {
    stdout.writeln('username daxil edin.Username bos ola bilmez');
    userCredentials['username'] = stdin.readLineSync().toString().trim();
    stdout.writeln('parol daxil edin.Parol bos ola bilmez');
    userCredentials['password'] = stdin.readLineSync().toString().trim();
    if ((userCredentials['username'] != null &&
            userCredentials['username']!.isNotEmpty) &&
        (userCredentials['password'] != null &&
            userCredentials['password']!.isNotEmpty)) {
      print(
          'Siz sisteme ${userCredentials['username']} username-i ile ugurla daxil olduz');

      // here we call wholeOperationFunction
      wholeOperation();
    }
  } else if (number == '2') {
    print(
        'Siz sisteme ${userCredentials['username']} username-i ile ugurla daxil olduz');
    //here we call wholeOperationFunction
    wholeOperation();
  }
}

void wholeOperation() {  ///////////////
  stdout.writeln(
      'Siyahidaki mehsullarimiz ,${products['1']!['prodName']}, ${products['2']!['prodName']} , ${products['3']!['prodName']}, ${products['4']!['prodName']} muvafiq olaraq nomreleri 1,2,3,4 dur.Secmek ucun bu nomrelerden birini secin...');
  String choosenProduct = stdin.readLineSync().toString().trim();
  stdout.write(
      'Siz ${products[choosenProduct]!['prodName']} mehsulunu secmisiniz ve bu mehsulun nagd qiymeti ${products[choosenProduct]!['price']} \$ dir davam etmek isteyirsinizse beli ve ya xeyr qeyd edin.');
  String userWantToBuy = stdin.readLineSync().toString().trim();
  if (userWantToBuy == 'beli') {
    stdout.write(
        'Mehsulu nagd ve ya Kartla odeye bilersiz nagd odemek isteyirsizse 1 kartla odemek isteyirsizse 2 secin');
    String paymentChoice = stdin.readLineSync().toString();
    if (paymentChoice == '1') {
      stdout.writeln(
          'Catdirilma xidmetinden istifade ucun 1 duymesini,mali ozunuz goturmek ucun 2 duymesini basin.Qeyd:catdirilma odenislidir 10Azn.');
      String deliveryMethod = stdin.readLineSync().toString().trim();
      if (deliveryMethod == '1') {
        products[choosenProduct]!['price'] += 10.0;
        print('Siz ${products[choosenProduct]!['price']} \$ pul odeyeceksiz');
      } else {
        print(
            'mehsulun qiymeti stabil qaldi ${products[choosenProduct]!['price']}');
      }
    } else {
      stdout.writeln(
          'Birbasa odemek isteyirsizse 1,taksit ile odemek isteyirsizse 2 duymesini basin');
      String userCardChoice = stdin.readLineSync().toString().trim();

      if (userCardChoice == '1') {
        print(
            'Mehsulun qiymeti ${products[choosenProduct]!['price']} \$ dir zehmet olmasa kart melumatlarini daxil edin');
        stdout.writeln(
            'Zehmet olmasa kart sahibinin adini daxil edin.Ugurlu alisveris ucun xanani bos saxlamayin ve adi dogru yazin!');
        cardCredentials['cardOwner'] = stdin.readLineSync().toString().trim();

        stdout.writeln('Zehmet olmasa 3 reqemli cvv kodu daxil edin');
        cardCredentials['cvv'] = stdin.readLineSync().toString();
        stdout.writeln('Zehmet olmasa kartin 8 reqemli kodunu daxil edin');
        cardCredentials['cardNumber'] = stdin.readLineSync().toString().trim();
        print(
            'Emeliyyat bitmek uzeredir.Hele de davam edirsiz? beli yazsaz hesabdan pul xaric olacaq');
        stdout.writeln('davam etmek ucun beli yazin eks halda xeyr yazin');
        String userContinueOrStop = stdin.readLineSync().toString();
        if (userContinueOrStop == 'beli') {
          print(
              '  Siz ${userCredentials['username']} adli istifadeci nagd odenisle ${products[choosenProduct]!['price']} \$ qiymete ${products[choosenProduct]!['prodName']}  mehsulunu aldiniz.');

          ///emeliyyat bitdi siz nagd aldiniz
        }
      } else {
        print(
            'sizin 3 Bank secimi sansiniz var  Birkart,Bolkart,Tamkart  secmek istediyiniz banki muvafiq olaraq 1, 2, 3 olaraq secin...');
        stdout.writeln(
            'secmek istediyiniz banki muvafiq olaraq 1, 2, 3 olaraq secin...');
        String bankChoice = stdin.readLineSync().toString().trim();

        ///
        if (bankChoice == '1') {
          print(
              'Birkart ilə 3, 6 ,12 , 18 və 24 aylıq ödəniş mümkündür və qiymət stabil qalır.');
          stdout.writeln(
              'Taksite boldurmek istediyiniz ayi muvafiq olaraq bolun 3,6,12 ve 24 bunlardan birini secin');
          String userTaxMonthBirkart = stdin.readLineSync().toString().trim();
          dynamic payPerMonthBirkart = products[choosenProduct]!['price'] /
              double.parse(userTaxMonthBirkart);
          print(
              'Siz ${userCredentials['username']} adli istifadeci  ${products[choosenProduct]!['prodName']} mehsuluna ayda $payPerMonthBirkart \$ odeyeceksiz');
        } else if (bankChoice == '3') {
          print(
              'Siz Tamkart secdiniz 3 ve 6 aya boldurub faizsiz odeye bilersiz,yalniz 12 aya odesez mehsulun qiymetinin 25 faizini de elave odemeli olacaqsiniz...');
          stdout.writeln(
              'Boldurmek istediyiniz ayi muvafiq olaraq qeyd edin 3, 6 ve ya 12');
          String userTaxMonthTamkart = stdin.readLineSync().toString().trim();
          dynamic userTotalAmountTamkart = userTaxMonthTamkart == '12'
              ? products[choosenProduct]!['price'] +=
                  products[choosenProduct]!['price'] / 4
              : products[choosenProduct]!['price'];
          double payPerMonthTamkart =
              userTotalAmountTamkart / double.parse(userTaxMonthTamkart);

          print(
              'Siz ${userCredentials['username']} adli istifadeci  ${products[choosenProduct]!['prodName']} mehsuluna ayda $payPerMonthTamkart \$ odeyeceksiz');
        } else if (bankChoice == '2') {
          print('Siz bolkart secdiniz 3 ve 6 ayliq taksitle odeye bilersiz');
          stdout.writeln(
              'secmek istediyiniz ayi muvafiq olaraq qeyd edin qeyd:6 ay secseniz her ay 10 manat elave odeyeceksiniz.');
          String userTaxMonthBolkart = stdin.readLineSync().toString().trim();
          dynamic userTotalAmountBolkart = userTaxMonthBolkart == '6'
              ? products[choosenProduct]!['price'] += 60
              : products[choosenProduct]!['price'];
          double payPerMonthBolkart =
              userTotalAmountBolkart / double.parse(userTaxMonthBolkart);
          print(
              'Siz ${userCredentials['username']} adli istifadeci  ${products[choosenProduct]!['prodName']} mehsuluna ayda $payPerMonthBolkart \$ odeyeceksiz');
        }
      }
    }
  } else {
    print('siz xeyr cavabi verdiniz ve hecne almaq istemediz');
  }
}
