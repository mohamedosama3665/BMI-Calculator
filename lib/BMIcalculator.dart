import 'dart:math';
class BmiCal {
  String txt1, txt2;
  double BMI;
  void getBMI(int weight, double height){
    BMI = weight/pow(height/100, 2);
    if(BMI >= 25){
      txt1 = 'OverWeight';
      txt2 = 'You need to lose some weight';
    }
    else if(BMI < 18){
      txt1 = 'UnderWeight';
      txt2 = 'You need to eat much more';
    }
    else {
      txt1 = 'Normal';
      txt2 = 'You have perfect shape';
    }
  }
}