import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';
import 'widgets/left_bar.dart';
import 'widgets/right_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController=TextEditingController();
  TextEditingController _weightController=TextEditingController();
 double _bmiresult=0;
  String _textResult="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(//Home screen description and styling
      appBar: AppBar(
          title: Text('BMI Calculator',style: TextStyle(color: accentColor,fontWeight: FontWeight.w300),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,//To prevent shadow effect
          centerTitle: true,

    

      ),
      backgroundColor: mainHexColor,//background of scaffold
body: SingleChildScrollView(child: Column(children: [
  SizedBox(height: 20,),
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 130,
        child: TextField(
          controller: _heightController,
          style: TextStyle(
             fontSize: 42,
             fontWeight: FontWeight.w300,
             color: accentColor,


          ),

          keyboardType: TextInputType.number,//Type of input to be taken
          decoration: InputDecoration(//decorating the box
          border: InputBorder.none,
          hintText: "Height",
          hintStyle: TextStyle(fontSize:42,fontWeight: FontWeight.w300,
          color: Colors.white.withOpacity(0.8)),
        




          ),
        ),
      ),
       Container(
        width: 130,
        child: TextField(
          controller: _weightController,
          style: TextStyle(
             fontSize: 42,
             fontWeight: FontWeight.w300,
             color: accentColor,


          ),
//2 texts fields that are displayed on the home screen
        keyboardType: TextInputType.number,//Type of input to be taken
          decoration: InputDecoration(//decorating the box
          border: InputBorder.none,
          hintText: "Weight",
          hintStyle: TextStyle(fontSize:42,fontWeight: FontWeight.w300,
          color: Colors.white.withOpacity(0.8)),
        




          ),
        ),
      ),
    ],
  ),
  SizedBox(height: 30,),
GestureDetector(
  onTap: (){
double _h=double.parse(_heightController.text);
double _w=double.parse(_weightController.text);
setState(() {
 _bmiresult=_w/(_h*_h);
 if(_bmiresult>25)
 {
  _textResult="over weight";
 }
 else if(_bmiresult>= 18.5&& _bmiresult<=25){
  _textResult="You have normal weight";
 }
 else
 {
  _textResult="You are under weight";
 }
});




  },
  child:   Container(
  
  child: Text("calculate",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: accentColor),),
  
  
  
  
  
  ),
),
SizedBox(
  height: 30,
),
Visibility(
  visible: _textResult.isNotEmpty,
  child:   Container(
  
    child: Text(_textResult,style: TextStyle(fontSize: 32,fontWeight: FontWeight.w400,color: accentColor),),
  
  ),
),
SizedBox(height: 10,),
leftBar(barWidth: 40),
SizedBox(height: 20,),
leftBar(barWidth: 70),
SizedBox(height: 20,),
leftBar(barWidth: 40),

SizedBox(height: 10,),//40
Rightbar(barWidth: 40),
SizedBox(height: 20,),
Rightbar(barWidth: 70),//70
SizedBox(height: 20,),
Rightbar(barWidth: 40),//40






],)),
    );
  }
}