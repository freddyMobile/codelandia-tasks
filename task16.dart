// ! Animal super class
// ! Birds, Mammals, Reptile
// ! display func. hamisina aiddir.
// ! her birinin ozunun fildleri var

/// Mammal- novu, yasi
/// Birds qanad uzunlugu, novunu,
/// Reptile- novu, zeherli olub olmadigi(bool)

enum BirdType { wild, peacefull }

enum MammalType { lightWeighted, HeavyWeighted }

enum ReptileType { herbivore, carnivore }

enum FeedingPatternOfAnimal { herbivore, carnivore }

enum GenderOfAnimal { male, female }

class Animal {
  int countOfEye;
  int countOfLegs;
  String name;
  GenderOfAnimal gender;
  FeedingPatternOfAnimal feeding;

  Animal(
      {required this.countOfEye,
      required this.countOfLegs,
      required this.name,
      required this.gender,
      required this.feeding});
  void display() {
    print('$countOfEye - goz sayi , $countOfLegs ayaq sayi , $name ad');
  }
}

class Reptiles extends Animal {
  ReptileType typeOfReptile;
  bool isPoisonous;

  Reptiles(
      {required this.isPoisonous,
      required this.typeOfReptile,
      required super.countOfEye,
      required super.countOfLegs,
      required super.name,
      required super.gender,
      required super.feeding});

  void actionOfReptiles() {
    print('$name surunur');
  }
}

class Mammals extends Animal {
  MammalType typeOfMammal;
  int ageOfMammal;
  Mammals(
      {required this.typeOfMammal,
      required this.ageOfMammal,
      required super.countOfEye,
      required super.countOfLegs,
      required super.gender,
      required super.name,
      required super.feeding});
}

class Birds extends Animal {
  double lengthOfWings;
  BirdType typeOfBird;
  Birds({
    required this.lengthOfWings,
    required this.typeOfBird,
    required super.countOfEye,
    required super.countOfLegs,
    required super.gender,
    required super.name,
    required super.feeding,
  });
}

void main() {
  var generalAnimal = Animal(
      countOfEye: 2,
      countOfLegs: 4,
      name: 'Dog',
      feeding: FeedingPatternOfAnimal.carnivore,
      gender: GenderOfAnimal.male);

  var reptileCobra = Reptiles(
      gender: GenderOfAnimal.female,
      feeding: FeedingPatternOfAnimal.carnivore,
      isPoisonous: true,
      typeOfReptile: ReptileType.carnivore,
      countOfEye: 2,
      countOfLegs: 0,
      name: 'Cobra');

  var mammalElephant = Mammals(
      feeding: FeedingPatternOfAnimal.carnivore,
      gender: GenderOfAnimal.male,
      typeOfMammal: MammalType.HeavyWeighted,
      ageOfMammal: 1000,
      countOfEye: 2,
      countOfLegs: 4,
      name: 'Nazim');

  var birdsEagle = Birds(
      feeding: FeedingPatternOfAnimal.carnivore,
      gender: GenderOfAnimal.male,
      lengthOfWings: 2,
      typeOfBird: BirdType.wild,
      countOfEye: 2,
      countOfLegs: 2,
      name: 'Devequsu');

  var penguenBird = Birds(
      countOfEye: 2,
      countOfLegs: 2,
      feeding: FeedingPatternOfAnimal.carnivore,
      gender: GenderOfAnimal.male,
      lengthOfWings: 2,
      name: 'Bob',
      typeOfBird: BirdType.peacefull);

  print(generalAnimal.countOfEye);
  print(generalAnimal.countOfLegs);
  print(generalAnimal.name);
  print(reptileCobra.isPoisonous);
  print(reptileCobra.typeOfReptile);
  print(reptileCobra.countOfEye);
  print(reptileCobra.countOfLegs);
  print(reptileCobra.name);
  print(mammalElephant.ageOfMammal);
  print(mammalElephant.typeOfMammal);
  print(mammalElephant.countOfEye);
  print(mammalElephant.countOfLegs);
  print(mammalElephant.name);
  print(birdsEagle.lengthOfWings);
  print(birdsEagle.typeOfBird);
  print(birdsEagle.countOfLegs);
  print(birdsEagle.countOfEye);

  generalAnimal.display();

  reptileCobra.actionOfReptiles();

  print(penguenBird.lengthOfWings);
  print(penguenBird.typeOfBird);
}
