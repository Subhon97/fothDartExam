void main(List<String> args) {
 
List<Rectangle> rektengho = [
  Rectangle(1, 3),
  Rectangle(5, 5),
  Rectangle(4, 5),
  Rectangle(4, 4),
 ];
  
  List<int> areaho = [];

  rektengho.forEach((element) { areaho.add(element.area());});
   
   areaho.sort();
   var b = areaho.last;

   print(b);

}


class  Rectangle  {
  int width;
  int height;

   Rectangle (this.width,this.height);

   int area() => width * height;

   
  
}