void main() {
  Cat myCat = Cat('Whiskers', 3, 'Brown');
  print(myCat.getDetails()); 
}


class Animal {
  String name;
  int age;

  Animal(this.name, this.age);
}

class Cat extends Animal {
  String color;

  Cat(String name, int age, this.color) : super(name, age);

  String getDetails() => 'Cat Name: $name, Age: $age, Color: $color';
}


