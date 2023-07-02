void main() {
  List<String> list = [
    'ASUS',
    'Asus',
    'asus',
    'HP',
    'hp',
    'Hp',
    'MSI',
    'msi',
    'Msi'
  ];
  giveOutput(list);
}

Map<String, int> product = {'ASUS': 0, 'HP': 0, 'MSI': 0};
void giveOutput(List<String> sampleList) {
  for (int i = 0; i < sampleList.length - 1; i++) {
    String checkedValue = sampleList[i].toUpperCase();
    if (checkedValue == sampleList[i + 1].toUpperCase()) {
      product[checkedValue] = product[checkedValue]! + 1;
    }
  }
  print(product);
}
