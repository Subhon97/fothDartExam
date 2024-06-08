void main() {
  List<Vehicle> vehicles = [Car(), Bike(), Car()];

  startVehicles(vehicles, (vehicle) => vehicle.start());
}


abstract class Vehicle {
  void start();
}

class Car extends Vehicle {
  @override
  void start() {
    print('Car started');
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print('Bike started');
  }
}

void startVehicles(List<Vehicle> vehicles, void Function(Vehicle) startFunction) {
  for (var vehicle in vehicles) {
    startFunction(vehicle);
  }
}


