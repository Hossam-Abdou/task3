import 'package:flutter/Material.dart';

class AppointmentComponents extends StatelessWidget {
String? drName;
String? appointmentTime;
IconData? suffixIcon;
Color? IconColor;

AppointmentComponents({this.IconColor,this.suffixIcon,this.drName, this.appointmentTime});

  @override
  Widget build(BuildContext context) {
    return  Column(          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(drName!,style: TextStyle(fontSize: 17),),

    Row(children: [
    Icon(Icons.alarm),
    Text(appointmentTime!),
      Spacer(),
      Icon(suffixIcon,color: IconColor,)
    ],),
    Divider(color: Colors.grey),
    ],
    );
  }
}
