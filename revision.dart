import 'dart:collection';
import 'dart:math';

// void main() {
//   Queue quie = Queue.from({1, 2, 3, 4});
//   Iterable it = [1, 2, 3, 4];
//   print(it);
//   print(quie);
// }
// void main() {
//   try {
//     print('aa');
//   } catch (error) {
//     print(error);
//   } finally {
//     print('finally isledi');
//   }
// }
// void main() {
//   HashSet hashSet = HashSet.from({65, 5, 4, 3, 2, 1});
//   print(hashSet);
// }

// void main() {
//   Set<int> set1 = {1, 2, 3};
//   Set<int> set2 = {2, 3, 4, 5, 6};
//   // Set<int> set3 = set2.intersection(set1); //{2,3}
//   //Set<int> set3 = set1.union(set2);
//   Set<int> set3 = set2.difference(set1);
//   print(set3);
// }

// void main() {
//   Map<int, String> map1 = {1: 'a', 2: 'aa', 3: 'aaa'};
//   print(map1.cast());
// }
// void main() {
//   List<int> aa = [1, 2, 3, 4, 5];
//   List<int> bb = aa.followedBy([99, 98, 97, 96, 95]).toList();
//   // print(bb.getRange(1, bb.length - 1));
//   // bb.fillRange(0, bb.length, 3);
//   bb.setRange(0, aa.length, List.generate(aa.length, (index) => index - 10));

//   print(bb); //error
// }
// void main() {
//   List<int> a = [1, 2, 3, 4];
//   a.setRange(1, 3, [9, 10, 11]);
//   print(a);
// }

// void main() {
//   int x = 5;
//   print('${x--} x--');
//   print(x);
// }
// void main() {
//   int x = 5;
//   print('${++x}  --x'); //4
//   print(x); //4
// }

// void main() {
//   int x = 5;
//   print(x++);
//   print(x);
// }

// void main() {
//   List<int> a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   print(a.indexWhere((element) => element >= 100));
//   print(a.lastIndexWhere((element) => element >= 2)); //9
// }

// void main() {
//   Set<int> set1 = {1, 5, 11};
//   print(set1.any((element) => function(element)));
// }

// bool function(int item) {
//   int i = 8;
//   if (item < 10) {
//     item = item * i;
//   } else {
//     item = item ~/ 8;
//   }
//   print(item);
//   return item % 5 == 0;
// }

// framerwork and sdk arasdir!!!

// DataType    key       value
// int         age=        5

// ??= bununla ?? null aware operatorunun arasinda ferq var

void main() {
  int a = 5;
  switch (a) {
    case 1:
    if(a==5){

    }
      print('a=5 oldu');
      break;
    case 2:
      print('a=10');
      break;
    default:
      print('c');
  }
}
