import 'package:flutter/Material.dart';

import 'component_appointment/appointments_component.dart';

class Appointments extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff3abddb),
        title: Row(children: [
          Icon(Icons.accessibility_outlined),
          Text('appointment'),
        ],),
        actions:
        [
          Icon(Icons.menu)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
            Center(
                child: Text('Wensday,22 May 2019',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)
            ),
              SizedBox(height: 30,),
              AppointmentComponents(drName:'Lusan Ruja' ,appointmentTime: ' 10:30',),
              AppointmentComponents(drName:'Victoria Olari' ,appointmentTime: ' 13:00',),
              AppointmentComponents(drName:'Diana Stefan' ,appointmentTime: ' 15:20',),
              AppointmentComponents(drName:'Gheorage Popa' ,appointmentTime: ' 16:10',),
              AppointmentComponents(drName:'Alexandru Sandu' ,appointmentTime: ' 16:40',suffixIcon: Icons.close,IconColor: Colors.red),
              AppointmentComponents(drName:'Dumitru Simona' ,appointmentTime: ' 08:00',suffixIcon: Icons.done_all,IconColor: Colors.blue),


          ],),
        ),
      ),
    );
  }
}
