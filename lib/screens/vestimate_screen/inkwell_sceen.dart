import 'package:flutter/Material.dart';

class ink extends StatelessWidget {
final IconData? icons;
String? text;
Color? color;
Color? tapped;

ink({this.icons, this.text,this.color, this.tapped});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: tapped   ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icons,size: 40,color: color),
            Text(text!,style: TextStyle(color: Color(0xffc3c3c3),fontSize: 20),)
          ],),
      ),
    );
  }
}
