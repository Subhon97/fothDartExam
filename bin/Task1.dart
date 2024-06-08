


void main() async{
 List<Person> per = [ 
  Person('Subhon', 19),
  Person('Muin', 21),
  Person('Hakim', 18),
  Person('Ahmad', 26)];

  
List<Person> ja = await oldP(per, 20);

ja.forEach((element) {
  print("${element.name} : ${element.age}");
});
}

Future<List<Person>>  oldP(List<Person> nom,int sol ) async{

  try {
  nom.removeWhere((element) => element.age<sol);
  
  return nom;
    
  } catch (e) {
      print(e);
      return [];    
  }
  
}



class Person {
  String name;
  int age ;

  Person(this.name,this.age);
}




