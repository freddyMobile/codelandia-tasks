//istifadeciye kitabin adina-1, muellife-2, qiymet araligina-3 4-iline gore secim imkani verin
import 'dart:io';

enum searchForWhat {
  name,
  author,
  priceRange,
  publishYear,
  genre,
}

Map<int, String> genres = {
  1: 'Dedective',
  2: 'Fiction',
  3: 'Science',
  4: 'Pshycology',
  5: 'Love'
};

class Book {
  String title;
  String author;
  int publicationYear;
  double price;
  int genre;

  Book({
    required this.title,
    required this.author,
    required this.publicationYear,
    required this.price,
    required this.genre,
  });
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void displayBook() {
    print('Umumi ${books.length} kitab var');
    books.forEach((element) {
      print(
          '${element.title} adli kitab ${element.publicationYear} ilde ${element.author} terefinden yazilib');
    });
  }

  void searchByTitle({required String searchingWord}) {
    int index = books.indexWhere((element) =>
        element.title.toLowerCase() == searchingWord.toLowerCase());
    if (index != -1) {
      print(
          'Bu kitab movcuddur: ${books[index].title} adli kitab ${books[index].publicationYear} ilde ${books[index].author} terefinden yazilib');
    } else {
      print('Bele bir kitab yoxdur');
    }
  }

  void searchBySingleLetter({required String singleLetter}) {
    List<Book> lastList = books
        .where((element) => element.title
            .toLowerCase()
            .toString()
            .startsWith(singleLetter.toLowerCase().toString()))
        .toList();
    lastList.forEach((element) {
      print(element.title);
    });
  }

  void searchByAnyElement(dynamic searchedWord, searchForWhat type) {
    if (type == searchForWhat.name) {
      List<Book> searchedList = books
          .where((element) =>
              element.title.toLowerCase().trim() ==
              (searchedWord as String).toLowerCase())
          .toList();
      searchedList.forEach((element) {
        print(
            '${element.title} adli kitab ${element.publicationYear} ilde ${element.author} terefinden yazilib');
      });
    } else if (type == searchForWhat.author) {
      List<Book> searchedList = books
          .where((element) =>
              element.author.toLowerCase() ==
              (searchedWord as String).toLowerCase())
          .toList();
      searchedList.forEach((element) {
        print(
            '${element.title} adli kitab ${element.publicationYear} ilde ${element.author} terefinden yazilib');
      });
    } else if (type == searchForWhat.publishYear) {
      List<Book> searchedList = books
          .where((element) => element.publicationYear == searchedWord)
          .toList();
      searchedList.forEach((element) {
        print(
            '${element.title} adli kitab ${element.publicationYear} ilde ${element.author} terefinden yazilib');
      });
    } else if (type == searchForWhat.genre) {
      List<Book> searchedList =
          books.where((element) => element.genre == searchedWord).toList();
      searchedList.forEach((element) {
        print(
            '${element.title} adli kitab ${element.publicationYear} ilde ${element.author}terefinden yazilib ${element.genre} janr');
      });
    }
  }

  void searchByPriceRange({required int ed1, required int ed2}) {
    List<Book> lastBooks = books
        .where((element) => (element.price > ed1 && element.price < ed2))
        .toList();

    lastBooks.forEach((element) {
      print(
          '${element.title} adli kitab ${element.publicationYear} ilde ${element.author} terefinden yazilib qiymet: ${element.price}');
    });
  }
}

void main() {
  Library axundovKitabxanasi = Library();
  axundovKitabxanasi.addBook(Book(
      title: 'Sefiller',
      author: 'Viktor Huqo',
      publicationYear: 1900,
      genre: 1,
      price: 100));
  axundovKitabxanasi.addBook(Book(
      title: 'STRY',
      author: 'Viktor Huqo',
      publicationYear: 1700,
      genre: 2,
      price: 50));

  axundovKitabxanasi.addBook(Book(
      title: 'SDRE',
      author: 'adadad',
      publicationYear: 2000,
      genre: 3,
      price: 40));
  axundovKitabxanasi.addBook(Book(
      title: 'Oezaba',
      author: 'adadad',
      publicationYear: 2000,
      genre: 4,
      price: 55));

  axundovKitabxanasi.addBook(Book(
      title: 'Olera',
      author: 'adadad',
      publicationYear: 2000,
      genre: 3,
      price: 40));
  axundovKitabxanasi.addBook(Book(
      title: 'SDRE',
      author: 'adadad',
      publicationYear: 2000,
      genre: 5,
      price: 40));

  // axundovKitabxanasi.displayBook();
  // axundovKitabxanasi.searchByTitle(searchingWord: 'Sefiller');
  // axundovKitabxanasi.searchBySingleLetter(singleLetter: 's');

  //axundovKitabxanasi.searchByAnyElement(2000, searchForWhat.publishYear);
  stdout.write(
      'Neye gore axtaris edirsiz? \n1:kitabin adidirsa 1 basin,\nmuellifdirse 2 basin,\nqiymet araligidirsa 3 basin,\niline gore 4 basin\njanra gore 5 basin');
  String userChoice = stdin.readLineSync().toString().trim();

  if (userChoice == '1') {
    stdout.write('kitabin adini yaz');
    String bookName = stdin.readLineSync().toString().trim();
    axundovKitabxanasi.searchByAnyElement(bookName, searchForWhat.name);
  } else if (userChoice == '2') {
    stdout.write('muellif adini yaz');
    String muellif = stdin.readLineSync().toString().trim();
    axundovKitabxanasi.searchByAnyElement(muellif, searchForWhat.author);
  } else if (userChoice == '4') {
    stdout.write('ili yaz');
    int il = int.parse(stdin.readLineSync().toString().trim());
    axundovKitabxanasi.searchByAnyElement(il, searchForWhat.publishYear);
  } else if (userChoice == '3') {
    stdout.write('qiymet neceden neceye olsun? 1-ci ededi yaz');
    int first = int.parse(stdin.readLineSync().toString());
    stdout.write('qiymet neceden neceye olsun? 2-ci ededi yaz');
    int second = int.parse(stdin.readLineSync().toString());
    axundovKitabxanasi.searchByPriceRange(ed1: first, ed2: second);
  } else if (userChoice == '5') {
    stdout.write(
        'janr nomresini yaz!\n1-Dedective\n2-Fiction\n3-Science\n4-Pshycology\n-5-Love');
    int bookGenre = int.parse(stdin.readLineSync().toString().trim());
    axundovKitabxanasi.searchByAnyElement(bookGenre, searchForWhat.genre);
  }

  //axundovKitabxanasi.searchByPriceRange(ed1: 20, ed2: 100);
}
