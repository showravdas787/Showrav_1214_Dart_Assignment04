import 'dart:io';

void main() async {
  var file = File('hello_copy.txt');

  if (await file.exists()) {
    file.delete();
    print('hello_copy.txt deleted successfully.');
  } else {
    print('File hello_copy.txt does not exist.');
  }
}
