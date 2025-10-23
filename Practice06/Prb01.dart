class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);
}

void main() {
  var laptop1 = Laptop(1, 'HP', 8);
  var laptop2 = Laptop(2, 'Dell', 16);
  var laptop3 = Laptop(3, 'Asus', 32);

  print('Laptop Details:');
  print('${laptop1.id} | ${laptop1.name} | ${laptop1.ram} GB');
  print('${laptop2.id} | ${laptop2.name} | ${laptop2.ram} GB');
  print('${laptop3.id} | ${laptop3.name} | ${laptop3.ram} GB');
}
