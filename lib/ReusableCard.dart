import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.txt1, this.txt2, this.increase, this.decrease});
  final String txt1;
  final String txt2;
  final Function increase;
  final Function decrease;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            color: Color(0xff424242),
          ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$txt1',
                style:
                TextStyle(color: Color(0xffB3B3B3), fontSize: 18),
              ),
              Text(
                '$txt2',
                style: TextStyle(
                    color: Color(0xffB3B3B3),
                    fontSize: 70,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff606060),
                    child: IconButton(
                      icon: Icon(Icons.remove, color: Color(0xffB3B3B3),),
                      onPressed: decrease,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xff606060),
                    child: IconButton(
                      icon: Icon(Icons.add, color: Color(0xffB3B3B3),),
                      onPressed: increase,
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}