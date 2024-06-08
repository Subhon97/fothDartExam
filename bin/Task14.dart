void main() {
  var animals = {
    'sazan': Fish('sazan'),
    'Murgobi': Duck('Murgobi'),
    'Cat': 'Cat', 
  };
    SwimmableAnimal(animals);
}


mixin Swimmable {
  void swim() {
    print('Swimming!');
  }
}

class Fish with Swimmable {
  String name;
  Fish(this.name);
}

class Duck with Swimmable {
  String name;
  Duck(this.name);
}

void SwimmableAnimal(Map<String, dynamic> animals) {
  for (var animal in animals.values) {
    if (animal is Swimmable) {
      animal.swim();
    }
  }
}


