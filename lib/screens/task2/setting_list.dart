import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingList extends StatelessWidget {
  String text;
  IconData Suffixicon;
  IconData Preffixicon;

  SettingList({required this.text, required this.Suffixicon,required this.Preffixicon});
  @override
  Widget build(BuildContext context) {

    return  Column(
      children: [
        SizedBox(height: 8,),
        Container(width: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
            color: Color(0xff373737),
          ),

          child: ListTile(
            leading: Icon(Preffixicon,color: Colors.white,),
            trailing: Icon(Suffixicon,color: Colors.white,),
            title: Text(text,style: TextStyle(color: Colors.white),),
          ),
        ),
      ],
    );
  }
}
