// Task: Rent a car

// Təlimatlar:
// a) Rentable abstract classını yaradın
// classın aşağıdakı metodları var:
// 1- rent():  Avtomobili icarəyə götürür
// 2- returnVeichle(): Avtomobili geri qaytarır

// b) VehicleType enum yaradın
// enumın aşaıdakı dəyərləri var:
// 1- Commercial
// 2- Coupe
// 3- Hatchback
// 4- Sedan
// 5- Sport
// 6- SUV
// 7- Motorcycle

// c)  Rentable classı impliment edən Vehicle class yaradın
// classın aşağıdakı atributları var:
// 1- brand: Avtomobilin markası
// 2- model: Avtomobilin modeli
// 3- type:  Avtomobilin növü

// d)  Endirimli qiyməti hesablağa imkan verən Discountable mixin yaradın
// mixinin aşağıdakı metodu var:
// 1- calculateDiscountedPrice(parametr)

// e) Veichle sinfindən miras alan və Discountable mixindən istifadə edən Car sinifini yaradın
// classın aşağıdakı atributu var:
// 1- passengerCapacity

abstract class Rentable {
  void rent();
  returnVehicle();
}

enum VehicleType { Commercial, Coupe, Hatchback, Sedan, Sport, SUV, Motorcycle }

class Vehicle implements Rentable {
  String brand;
  String model;
  VehicleType type;

  Vehicle({required this.brand, required this.model, required this.type});

  @override
  void rent() {
    print('$brand -nin $model modelli $type tipli masini icareye goturuldu');
  }

  @override
  returnVehicle() {
    return 'Icareye goturulmus masin $brand -nin $model modelli $type tipli masinidir.';
  }
}

mixin Discountable {
  String calculateDiscountedPrice(
      {required int carPrice, required int discountPercentage}) {
    double lastPrice = carPrice - carPrice * discountPercentage / 100;
    return 'Avtomobilin yekun qiymeti $lastPrice bu qederdir...Ilkin qiymeti ise $carPrice dir';
  }
}

class Car with Discountable implements Vehicle {
  @override
  void rent() {
    print('$brand -nin $model modelli $type tipli masini icareye goturuldu');
  }

  @override
  returnVehicle() {
    return 'Icareye goturulmus masin $brand -nin $model modelli $type tipli masinidir.';
  }

  @override
  String brand;

  @override
  String model;

  @override
  VehicleType type;

  Car({required this.brand, required this.model, required this.type});
}

void main() {
  Car car1 = Car(brand: 'Mercedes', model: 'ML', type: VehicleType.SUV);
  print(car1.brand);
  print(car1.model);
  print(car1.type);
  car1.rent();
  print(car1.returnVehicle());
  print(car1.calculateDiscountedPrice(carPrice: 20000, discountPercentage: 20));
}
