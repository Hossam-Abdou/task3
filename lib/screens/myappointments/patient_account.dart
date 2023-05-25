import 'package:flutter/Material.dart';

import '../shared_Component/button.dart';
import 'component_appointment/screen1_component.dart';

class Patient extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(children: [
        Icon(Icons.person),
        Text('Patient Details'),

      ],),
        actions: [
          Icon(Icons.menu)
        ],
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            CircleAvatar(
              radius: 45,
              backgroundImage: NetworkImage('https://img.freepik.com/free-vector/doctor-patient-medical-concept-hospital-patient-lying-hospital-bed_1150-50285.jpg'), ),

            Column(children: [
              Text('Dumitro Simona',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Button(containerWidth:140, buttonColor: Color(0xff3abddb),buttonText:'Medical History' ,containerRadius: 2),
            ],)
          ],),
        ),
        SizedBox(height: 20,),

        rowDesign(icon:(Icons.alarm),text:' 08:00 - 09:30'),
        rowDesign(icon:(Icons.phone_android_rounded),text:' 07345627767',textColor: Color(0xff92c8dc)),
        rowDesign(icon:(Icons.pin_drop),text:' 48 traian street,Building 54. \n Appartment 02,Brasov'),
        rowDesign(icon:(Icons.file_copy),text:' Medical test performed to \n verify the state of health...',textColor: Color(0xff92c8dc)),

        SizedBox(height: 25,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(buttonColor: Color(0xff3abddb),buttonText: 'Start\nprocedures',containerWidth: 110,containerRadius: 2),
            Button(buttonColor: Color(0xffcecece),buttonText: 'Edit',containerWidth: 110,containerRadius: 2),
          ],
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
         Button(buttonColor: Color(0xff3abddb),buttonText: 'Back',containerWidth: 110,containerRadius: 2),
         Button(buttonColor: Color(0xff3abddb),buttonText: 'Patient\nMissing',containerWidth: 110,containerRadius: 2),
          ],
        ),
      ],),
    );
  }
}
