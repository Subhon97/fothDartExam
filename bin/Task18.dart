void main() {
  List<Person> persons = [
    Person("Alice", 30),
    Teacher("Bob", 40, "Math"),
    Person("Charlie", 25),
    Teacher("David", 35, "Science")
  ];

  bool ageFilter(int age) {
    return age > 30;
  }

  List<Person> filteredPersons = PersonsByAge(persons, ageFilter);
  for (var person in filteredPersons) {
    print('Name: ${person.name}, Age: ${person.age}');
  }
}


class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Teacher extends Person {
  String subject;

  Teacher(String name, int age, this.subject) : super(name, age);
}

List<Person> PersonsByAge(List<Person> persons, bool Function(int) ageFilterFunc) {
  return persons.where((person) => ageFilterFunc(person.age)).toList();
}


