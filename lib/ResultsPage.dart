import 'package:bmicalculator/Reusable_content.dart';
import 'package:bmicalculator/main.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'Result_Brain.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    //Text(CalculateBrain.getResult,style: BMIRESULTtextStyle,),
                    Text("22.5",style: BMIcalculatedResult,),
                    Text("you are perfect",style: BMIguide,)
                  ],

                ) ,
              ) )
          //ButtonBottom()
        ],
      ),
    );
  }
}
