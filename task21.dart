// Task: Restorant Order app

// Təlimatlar:

// a) FoodItem classını yaradın
// classın aşağıdakı atributları var:
// 1- name
// 2- price

// b)  FoodItem classı extend edən OrderingSystem <T>  class yaradın
// classın aşağıdakı atributları var:
// 1- order - sifarişlərin siyahısı
// classın aşağıdakı metodları var:
// 1- addItem(parametr){}
// 2- removeItem(parametr){}
// 3- calculateTotalCost(){}

// c)  FoodItem classı extend edən Appetizer class yaradın
// classın aşağıdakı atributları var:
// 1- description

// d)  FoodItem classı extend edən MainCourse class yaradın
// classın aşağıdakı atributları var:
// 1- ingredients

// e)  FoodItem classı extend edən Dessert class yaradın
// classın aşağıdakı atributları var:
// 1- isSweet

class FoodItem {
  String name;
  double price;
  FoodItem({required this.name, required this.price});
}

class OrderingSystem<T> extends FoodItem {
  List<T> order = [];
  OrderingSystem({required this.order}) : super(name: '', price: 0.0);

  void addItem(T item) {
    order.add(item);
  }

  void removeItem(String text) {
    String keyWord = text.toLowerCase();
    order.removeWhere((element) =>
        element.runtimeType == Appetizer &&
        (element as Appetizer).name.toLowerCase() == keyWord);

    order.removeWhere((element) =>
        element.runtimeType == Dessert &&
        (element as Dessert).name.toLowerCase() == keyWord);
  }

  void calculateTotalCost() {
    double totalCost = 0;

    for (int i = 0; i < order.length; i++) {
      if (order[i].runtimeType == Appetizer) {
        totalCost += (order[i] as Appetizer).price;
      } else if (order[i].runtimeType == Dessert) {
        totalCost += (order[i] as Dessert).price;
      }
    }
    print('total cost of the order is $totalCost');
  }
}

class Appetizer extends FoodItem {
  String description;
  Appetizer(
      {required this.description, required super.name, required super.price});
}

class MainCourse extends FoodItem {
  List<String> ingredients;
  MainCourse(
      {required this.ingredients, required super.name, required super.price});
}

class Dessert extends FoodItem {
  bool isSweet;
  Dessert({required this.isSweet, required super.name, required super.price});
}

void main() {
  OrderingSystem orderMachine = OrderingSystem(order: []);

  orderMachine.addItem(Appetizer(
      description: 'Cox gozel bir appetizer', name: 'Fistiq', price: 100));

  orderMachine.addItem(Dessert(isSweet: true, name: 'Balli tort', price: 50));

  orderMachine.addItem(Dessert(isSweet: true, name: 'LokumQirmizi', price: 10));
  orderMachine.addItem(Dessert(isSweet: true, name: 'LokumYasil', price: 15));
  orderMachine.calculateTotalCost();
  orderMachine.removeItem('lokumqirmizi');

  orderMachine.calculateTotalCost();
}
