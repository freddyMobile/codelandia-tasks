// Task - 2
// daxilində tərarlanan və təkrarlanmayan tam ədədlərin olduğu qarışıq siyahı qurun
// siyahıda təkrarlanan elementləri silin
// siyahının ən yüksək dəyərə sahib 2ci elementini tapın
// siyahını çoxdan aza doğru sıralayın
import 'dart:io';
import 'dart:math';

void main() {
  stdout.writeln('nece elementli random list yaratmaq isteyirsiniz?');
  int lengthOfList = int.parse(stdin.readLineSync()!);
  print(returnReversedList(length: lengthOfList));
}

List<int> returnReversedList({required int length}) {
  var rsc = Random();
  List<int> mixedList =
      List.generate(length, (index) => index * rsc.nextInt(100));
  Set<int> mixedListToSet = mixedList.toSet();
  mixedList = mixedListToSet.toList();
  mixedList.sort();
  print('${mixedList[mixedList.length - 2]}  ikinci en yuksek deyer');
  mixedList = mixedList.reversed.toList();
  return mixedList;
}
