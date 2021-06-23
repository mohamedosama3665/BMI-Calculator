import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  GenderCard({this.gender, this.icon, this.genderIcon, this.onPressed, this.toggle});

  final String gender;
  final IconData icon;
  final IconData genderIcon;
  final Function onPressed;
  final bool toggle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Color(0xff424242),
            ),
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(icon, color: Colors.white,),
                  color: Color(0xffb3b3b3),
                  iconSize: 50,
                  onPressed: onPressed,
                ),
                Text(
                  '$gender',
                  style: TextStyle(color: Color(0xffb3b3b3), fontSize: 25),
                ),
                Icon(
                  genderIcon,
                  size: 50,
                  color: Colors.purple,
                ),
              ],
            )));
  }
}
