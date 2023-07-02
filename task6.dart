import 'dart:io';
import 'dart:math';

// Task-1
// tam ədədlərdən ibarət 2 List yaradın
// bu 2 siyahının elementlərini yeni bir siyahıda yerləşdirin və çap edin.
// yeni siyahını azdan çoxa doğru sıralayın və çap edin.
void main() {
  stdout.writeln('birinci list nece elementden ibaret olsun? reqem yazin!');
  int listLength1 = int.parse(stdin.readLineSync()!);
  stdout.writeln('ikinci list nece elementden ibaret olsun? reqem yazin!');
  int listLength2 = int.parse(stdin.readLineSync()!);
  print(
      returnList(firstListLength: listLength1, secondListLength: listLength2));
}

List<int> returnList(
    {required int firstListLength, required int secondListLength}) {
  var rsc = Random();
  List<int> first =
      List.generate(firstListLength, (index) => index * rsc.nextInt(100));
  List<int> second =
      List.generate(secondListLength, (index) => index * rsc.nextInt(1000));
  first.addAll(second);
  first.sort();
  Set<int> firstSet =
      first.toSet(); //bunu etdim ki tekrar elementlerden qurtulaq...
  first = firstSet.toList();
  return first;
}
