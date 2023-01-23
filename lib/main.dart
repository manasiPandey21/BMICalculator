import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/Icon_content.dart';
import 'Reusable_content.dart';
import 'constants.dart';
import 'package:bmicalculator/ResultsPage.dart';

enum Gender {
  male,
  female,
}

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0x29E0A0E21),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late Gender selectedGender = Gender.male;
  int height = 140;
  int weight = 60;
  int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          //backgroundColor: Colors.black12,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour:
                      selectedGender == Gender.male ? Coloring : nonColoring,
                  cardChild: newContent(FontAwesomeIcons.mars, "MALE"),
                )),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    selectedGender = Gender.female;
                  },
                  colour:
                      selectedGender == Gender.female ? Coloring : nonColoring,
                  cardChild: newContent(FontAwesomeIcons.venus, "FEMALE"),
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              onPress: () {},
              colour: Coloring,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: labelTestStryle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kNumberTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFFEB1555),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        }),
                  )
                ],
              ),
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                        colour: Coloring,
                        onPress: (){},
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('WEIGHT', style: labelTestStryle),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        weight -= 1;
                                      });
                                    },
                                    icon: Icon(Icons.remove_circle)),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      weight += 1;
                                    });
                                  },
                                  icon: Icon(Icons.add_circle),
                                )
                              ],
                            )
                          ],
                        ))),
                Expanded(
                    child: ReusableCard(
                        colour: Coloring,
                        onPress: (){},
                        cardChild: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[

                            Text('AGE', style: labelTestStryle),
                            Text(
                              weight.toString(),
                              style: kNumberTextStyle,
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,

                              children: <Widget>[

                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        age -= 1;
                                      });
                                    },
                                    icon: Icon(Icons.remove_circle)),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      age += 1;
                                    });
                                  },
                                  icon: Icon(Icons.add_circle),
                                )
                              ],
                            )
                          ],
                        ))),

                // Expanded(
                //     child:ReusableCard(colour:Coloring,
                //     cardChild: )
                // ),
              ],
            )),
            GestureDetector(
              onDoubleTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultsPage()));
              },
              child: Container(
                child: Center(child: Text('CALCULATE',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w900),)),
                color: Colors.pink,
                height: bottomContainerHeight,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10),
              ),
            )
          ],
        ));
  }
}
