import 'dart:math';
class CalculateBrain{
  CalculateBrain(this.height,this.weight){
    _bmi=weight/(pow(height, 2)/100*100);
  }
  int height;
  int weight;
  double _bmi=0;
  String CalculateBmi(){
    //_bmi=weight/(pow(height, 2)/100*100);

    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi>=25){
      return'Overweight';
    }else if(_bmi>18.5 && _bmi<22.5){
      return'Normal';
    }else{
      return 'Underweight';
    }
  }
  String getInterpret(){
    if(_bmi>=25){
      return'You have higher weight,just do lots of exercise and healthy diet';
    }else if(_bmi>18.5 && _bmi<22.5){
      return'you are perfect,enjoy your day';
    }else{
      return 'Sorry,you need to eat a healthy diet';
    }
  }

}