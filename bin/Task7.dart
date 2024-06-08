class Box<T> {
  T? _value;

  Box([this._value]);

  void setValue(T value) {
    _value = value;
  }

  T? getValue() {
    return _value;
  }
}

void main() {
  var intBox = Box<int>();
  intBox.setValue(10);
  print('Int value: ${intBox.getValue()}'); 

  
  var stringBox = Box<String>();
  stringBox.setValue('Hello, Dart!');
  print('String value: ${stringBox.getValue()}'); 

  var doubleBox = Box<double>();
  doubleBox.setValue(3.14);
  print('Double value: ${doubleBox.getValue()}'); 
}
