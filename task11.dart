// Task: Tam ədədlərdən ibarət bir list hazırlayın. Listin üzərində əməliyyat aparmaq üçün 4 funksiya yaradın. 1- funksiya: listin ən böyük elementin tapır 2- funksiya listin ən kiçik elementin tapır 3- funksiya elementlərin cəmini tapır 4- funksiya elementlərin ədədi ortasını tapır
void main() {
  List<int> numbers = [0, 1, 2, 3, 6, 9, 12, 21, 32, 44, 53];
  print(func4(numbers));
}

int func1(List<int> list) {
  list.sort();
  return list.last;
}

int func2(List<int> list) {
  list.sort();
  return list.first;
}

int func3(List<int> list) {
  return list.reduce((value, element) => value + element);
}

int func4(List<int> list) {
  int sum = 0;
  list.forEach((element) {
    sum += element;
  });
  return sum;
}
