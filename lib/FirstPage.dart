import 'package:flutter/material.dart';
import 'package:flutter/src/material/slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:session11/Result.dart';
import 'ReusableCard.dart';
import 'GenderCard.dart';
import 'ReusableButton.dart';
import 'Result.dart';
import 'BMIcalculator.dart';

BmiCal _bmiCal = BmiCal();
class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double height = 170.0;
  int age = 18;
  int weight = 75;
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff3C3C3C),
      appBar: AppBar(
        centerTitle: true,
       // backgroundColor: Color(0xff191919),
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontSize: 24, color: Color(0xffB3B3B3)),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                ReusableCard(
                  txt1: 'Age (In Year)',
                  txt2: age.toString(),
                  decrease: () {
                    setState(() {
                      if (age > 1) age--;
                    });
                  },
                  increase: () {
                    setState(() {
                      age++;
                    });
                  },
                ),
                ReusableCard(
                  txt1: 'Weight (Kg)',
                  txt2: weight.toString(),
                  decrease: () {
                    setState(() {
                      if (weight > 10) weight--;
                    });
                  },
                  increase: () {
                    setState(() {
                      weight++;
                    });
                  },
                ),
              ],
            ),
          ),
          Expanded(
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
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 25,
                      color: Color(0xffB3B3B3),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '${height.toStringAsFixed(0)}',
                        style: TextStyle(
                            fontSize: 50,
                            color: Color(0xffB3B3B3),
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'cm',
                        style:
                            TextStyle(fontSize: 15, color: Color(0xffB3B3B3)),
                      ),
                    ],
                  ),
                  Slider(
                      activeColor: Colors.purple,
                      inactiveColor: Colors.white,
                      min: 140,
                      max: 200,
                      value: height,
                      onChanged: (val) {
                        setState(() {
                          height = val;
                        });
                      })
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              GenderCard(
                icon: FontAwesomeIcons.mars,
                gender: 'Male',
                genderIcon:
                    (toggle) ? Icons.check_box : Icons.check_box_outline_blank,
                toggle: toggle,
                onPressed: () {
                  setState(() {
                    toggle = !toggle;
                  });
                },
              ),
              GenderCard(
                icon: FontAwesomeIcons.venus,
                gender: 'Female',
                genderIcon:
                    (toggle) ? Icons.check_box_outline_blank : Icons.check_box,
                toggle: toggle,
                onPressed: () {
                  _bmiCal.getBMI(weight, height);
                  setState(() {
                    toggle = !toggle;
                  });
                },
              ),
            ],
          )),
          SizedBox(height: MediaQuery.of(context).size.height*0.02),
          ReusableButton(txt: 'Calculate', onPressed: (){
            _bmiCal.getBMI(weight, height);
            Navigator.push(context, MaterialPageRoute(builder: (context) => Result(txt1: _bmiCal.txt1, txt2: _bmiCal.txt2,BMI: _bmiCal.BMI,)));
          },),
          SizedBox(height: MediaQuery.of(context).size.height*0.035,)
        ],
      ),
    );
  }
}

