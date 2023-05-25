import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';

class listDetails
{
  String? numbers; // i made it string because it is constant
  String? text;
  listDetails({this.numbers, this.text});

}
Widget Data (listDetails list)=>
    Column(
     crossAxisAlignment:CrossAxisAlignment.center,
      children: [
      Text('${list.numbers}',style: TextStyle(color: Colors.white),),
       Text('${list.text}',style: TextStyle(color: Colors.white),),

      ],);




