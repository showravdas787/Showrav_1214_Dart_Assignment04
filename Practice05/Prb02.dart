import 'dart:io';

void main() {
  var file = File('hello.txt');
  file.writeAsString('\nMy friend\'s name is Rahul', mode: FileMode.append);
  print('Friend\'s name appended to hello.txt');
}
