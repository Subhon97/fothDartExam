
void main() {
  List<Map<String, String>> carMaps = [
    {'make': 'Toyota', 'model': 'Corolla'},
    {'make': 'Honda', 'model': 'Civic'},
    {'make': 'Ford', 'model': 'Fusion'}
  ];

  List<Car> cars = createCarList(carMaps);

  for (var car in cars) {
    print('Make: ${car.make}, Model: ${car.model}');
  }
}


class Car {
  String make;
  String model;

  Car({required this.make, required this.model});

 
  Car.fromMap(Map<String, String> map)
      : make = map['make']!,
        model = map['model']!;
}

List<Car> createCarList(List<Map<String, String>> carMaps) {
  List<Car> cars = [];
  for (var carMap in carMaps) {
    cars.add(Car.fromMap(carMap));
  }
  return cars;
}


