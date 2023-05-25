import 'package:flutter/Material.dart';

class rowDesign extends StatelessWidget {

IconData? icon;
String? text;
Color? textColor;

rowDesign({this.icon, this.text,this.textColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15,),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 60),
          child: Row(
            children: [
              Icon(icon,size: 32,),
              Text(text!,style: TextStyle(color: textColor),),
            ],),

        ),

      ],
    );

  }
}
