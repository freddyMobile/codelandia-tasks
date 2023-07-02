enum CarType {
  sedan,
  SUV,
  OfRoad,
}

void main() {
  var vehicle = Vehicle(
      petrolPerHundredKm: 20,
      torque: 100,
      type: CarType.sedan,
      engineSize: 2.2);

  var bugattiVeyron = Bugatti(
      weight: 4000,
      engineSize: 12.8,
      petrolPerHundredKm: 30,
      torque: 500,
      type: CarType.sedan);

  bugattiVeyron.makeDrift();
  bugattiVeyron.repairVehicle();
  print(vehicle.engineSize);
  vehicle.modifyVehicle(2);
}

class Vehicle {
  double petrolPerHundredKm;
  CarType type;
  double torque;
  double engineSize;
  Vehicle(
      {required this.petrolPerHundredKm,
      required this.torque,
      required this.type,
      required this.engineSize});

  void repairVehicle() {
    print('Your vehicle has been repaired');
  }

  void modifyVehicle(double additionVolume) {
    this.engineSize = this.engineSize + additionVolume;
    print(engineSize);
  }
}

class Bugatti extends Vehicle {
  double weight;
  Bugatti(
      {required this.weight,
      required super.engineSize,
      required super.petrolPerHundredKm,
      required super.torque,
      required super.type});

  void makeDrift() {
    print(
        'You have done drift with your Bugatti, your Bugatti\'s caracteristics are like that:\nweight:$weight\nenginesize:$engineSize\npetrolperhunderdkm:$petrolPerHundredKm\ntoque:$torque\ntype:$type');
  }
}
