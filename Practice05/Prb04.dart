import 'dart:io';

void main() async {
  var sourceFile = File('hello.txt');
  var destinationFile = await sourceFile.copy('hello_copy.txt');
  print('File copied to ${destinationFile.path}');
}
