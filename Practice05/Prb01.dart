import 'dart:io';

void main() {
  var file = File('hello.txt');
  file.writeAsString('My name is Showrav Das');
  print('Name written to hello.txt');
}
