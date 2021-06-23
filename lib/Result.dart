import 'package:flutter/material.dart';
import 'ReusableButton.dart';
import 'FirstPage.dart';
import 'BMIcalculator.dart';
class Result extends StatelessWidget {
  Result({this.BMI, this.txt1, this.txt2});
  final double BMI;
  final String txt1, txt2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff2E2E2E),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff191919),
        title: Text(
          'Your Health Status',
          style: TextStyle(fontSize: 24, color: Color(0xffB3B3B3)),
        ),
      ),
      body: Container(
        width: double.infinity,
        margin: EdgeInsets.all(6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(25)),
          color: Color(0xff424242),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(BMI.toStringAsFixed(1), style: TextStyle(fontWeight: FontWeight.w600, fontSize: 100, color: Color(0xffB3B3B3)),),
            Text('$txt1', style: TextStyle(fontSize: 20, color: Colors.purple),),
            Text('$txt2', style: TextStyle(fontSize: 15, color: Color(0xffB3B3B3)),),
            ReusableButton(txt: 'Recalculate', onPressed: (){Navigator.pop(context);},)
          ],
        ),
      ),
    );
  }
}
