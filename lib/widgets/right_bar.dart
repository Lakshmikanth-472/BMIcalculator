import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';
class leftBar extends StatelessWidget {
  
  final double barWidth;//parameter
const leftBar({Key? key ,required this.barWidth}):super(key: key)     ;
  @override
  Widget build(BuildContext context) {
    return
    Row(
      mainAxisAlignment: MainAxisAlignment.start,//Allign everythin to left side of row
      children: [
        Container(
          height: 25,//defining parameters about container
          width: barWidth,
          decoration: BoxDecoration(//Designing the design displayed on the app
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                color: accentColor  ),//giving the color of predefined color in constants.dart file
        ),
      ],
    );



  
  }
}
