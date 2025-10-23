import 'dart:io';

void main() {
  var file = File('students.csv');

  file.writeAsString('Name,Age,Address\n');
  file.writeAsString('Showrav,21,Sylhet\n', mode: FileMode.append);
  file.writeAsString('Rahul,22,Dhaka\n', mode: FileMode.append);
  file.writeAsString('Rafi,20,Chittagong\n', mode: FileMode.append);

  print('Student data written to students.csv\n');

  var content = file.readAsString();
  print('Reading data from students.csv:\n$content');
}
