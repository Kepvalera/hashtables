import 'package:hashtables/hashtables.dart';

void main() {
  var table = HashTable<String, String>(10);

  table.add('apple', 'fruit');
  table.add('carrot', 'vegetable');

  print('apple => ${table.get('apple')}');
  print('carrot => ${table.get('carrot')}');

  table.remove('apple');
  print('apple => ${table.get('apple')}'); 
}
