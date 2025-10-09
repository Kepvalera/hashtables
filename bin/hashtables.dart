import 'package:hashtables/binary_search.dart';
import 'package:hashtables/linear_search.dart';
import 'package:hashtables/hash_search.dart';

void main() {
  final myList = [42, 3, 10, 7, 28, 149, 0, 3, 25, 7, 1];
  var foundindex = linearSearch(myList, 28);
  print(foundindex);

  myList.sort();
  print(myList); // [0, 1, 3, 3, 7, 7, 10, 25, 28, 42, 149]

  foundindex = binarySearch(myList, 1);
  print(foundindex);


final studentList = List<Student?>.filled(300000, null, growable: false);
  Student(2024007, 'Valerii'),
  Student(2024078, 'Aisha'),
  Student(20240077, 'Aldar'),
  Student(20240017, 'Mariam'),
  Student(20240027, 'Daniil'),
  Student(20240037, 'Sofia'),
  Student(20240047, 'Liam'),
  Student(20240057, 'Olivia'),
  Student(20240067, 'Noah'),
;


final studentName = studentSearch(studentList, 20240037);
print(studentName);
}
