import 'package:flutter/material.dart';
import 'package:task3/screens/myappointments/my_account_screen.dart';
import 'package:task3/screens/task6/task6_screen.dart'; // screen 6

import '../screens/cart/cart.dart';
import '../screens/myappointments/appointments.dart';
import '../screens/myappointments/patient_account.dart';
import '../screens/vestimate_screen/vestimate_screen4.dart';

class RootApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Patient() ,
    );
  }
}
