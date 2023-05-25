import 'package:flutter/Material.dart';

import '../shared_Component/button.dart';
import 'component_appointment/screen1_component.dart';

class MyAccount extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff3abddb),
        title: Row(children: [
          Icon(Icons.accessibility_outlined),
          Text('My Account'),
        ],),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          child: Center(
            child: Column(
              children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://img.freepik.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg'),),
              Text('Maria loana lente',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text('HCP Name',style: TextStyle(fontSize: 15,),),
              SizedBox(height: 20,),

              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rowDesign(icon:(Icons.phone_android_rounded),text:'  07434697256'),

                  rowDesign(icon:(Icons.alternate_email),text:'  maria@gmail.com'),

                  rowDesign(icon:(Icons.shopping_bag_rounded),text:'  49 Nerva traian Street'),
                ],),
                SizedBox(height: 20,),
                Button(buttonColor: Color(0xff3abddb),buttonText: 'Back',containerWidth: 140,containerRadius: 2),
            ],),
          ),
        ),

      ),
    );
  }
}
