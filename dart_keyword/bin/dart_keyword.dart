


/* ====== ENUM ======== */
// khai báo enum
enum Color {red, green, blue}

// Sử dụng enum's value (Color) để gán giá trị cho List 
List<Color> lists = Color.values;

/* ====== End ENUM ======== */


/* ====== mixin ======== */

mixin Human {
  String? name;
  int? age;
  void about();
}

class Doctor with Human {
  String? position;
  Doctor(String doctorName, int doctorAge, String position) {
    name = doctorName;
    age = doctorAge;
    this.position = position;
  }

  @override
  void about() {
    print('$name is $age years old. position: $position');
  }
}

/* ====== end mixin ======== */


/* ====== abstract ======== */
abstract class Geometry{
   void perimeter(); // đây là abstract method 
   void about(){} // đây không phải là abstract method 
}

class Circle extends Geometry{
  final double radius ;
  @override
  void perimeter() {
    print("perimeter of circle is ${3.14*2*radius}") ;
  }

  Circle(this.radius);

}

class Square extends Geometry{
  final double edge;

   @override
  void perimeter() {
    print("perimeter of square is ${4*edge}") ;
  }

  Square(this.edge);
} 

/* ====== end abstract ======== */


class MonAn{
  late String ten;

  void setTen(String str){
    ten = str;
  }
}


keyword

void main() {

  MonAn monAn = MonAn();
  monAn.setTen('Banh my');
  print(monAn.ten);



// abstract
// Circle circle = Circle(4);
// Square square = Square(4);
// circle.perimeter();
// square.perimeter();


/*
  print(Color.red.index); // index red = 0

  for(int i = 0;i < lists.length;i++){
    print("${lists[i]}"); // in ra từng item trong list
  }

  var aColor = Color.red;

  // Sử dụng enum trong câu lệnh Switch
  switch(aColor){
    case Color.red:
      print("Color is red");
      break;
    case Color.green:
      print("Color is red");
      break;
    case Color.blue:
      print("Color is red");
      break;
    default:
      print(aColor);
  }
*/

  Doctor doctor = Doctor("John",35,"Dean");
  doctor.about();
}

