import 'dart:math';

void main() {
  Shape circle = Circle(5);
  Shape square = Square(4);

  print('Area circle: ${circle.area()}');
  print('Area square: ${square.area()}');
}

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double area() {
    return side * side;
  }
}


