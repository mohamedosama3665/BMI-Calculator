import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({this.txt, this.onPressed});
  final String txt;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff424242),
        borderRadius: BorderRadius.circular(200),
      ),
      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.2),
      padding: EdgeInsets.all(5),
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 15),
        color: Colors.purple,
        child: Text('$txt', style: TextStyle(color: Colors.white, fontSize: 20),),
        shape: (RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(200))),
        onPressed: onPressed,
      ),
    );
  }
}
