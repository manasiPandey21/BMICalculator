import 'package:bmicalculator/Reusable_content.dart';
import 'package:bmicalculator/main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'Result_Brain.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(this.height,this.weight,this.age);
  int height;
  int weight;
  int age;

  @override
  Widget build(BuildContext context) {
    CalculateBrain cb=new CalculateBrain(height,weight);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child:Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Your Result',style:TextStyle(fontSize: 50,fontWeight:FontWeight.w900)),
            ),
              
          ),
          ),
          Expanded(
              flex: 5,
              child:ReusableCard(
                onPress: (){},
                colour: Coloring,
                cardChild:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[
                    Text(cb.CalculateBmi(),style: BMIcalculatedResult,),
                    Text(cb.getResult(),style: BMIRESULTtextStyle,),

                    Text(cb.getInterpret(),style: BMIguide,)
                  ],

                ) ,
              ) ),
          //ButtonBottom()
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                  child: Text(
                    "RE_CALCULATE",
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
                  )),
              color: Colors.pink,
              height: bottomContainerHeight,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10),
            ),
          )
        ],
      ),
    );
  }
}
