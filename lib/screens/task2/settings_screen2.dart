import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/screens/task2/setting_list.dart';

class Settings extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff212121),

      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    IconButton(onPressed: () {} ,icon: Icon(Icons.arrow_back_sharp,color: Colors.white,),),
                    Spacer(),
                    IconButton(onPressed: () {} ,icon: Icon(Icons.light_mode_outlined,color: Colors.white,),),
                  ],
                ),
              ),
            Stack(
              children: [
                CircleAvatar(backgroundImage:AssetImage('assets/images/human.jpg'),radius: 35,),

                Positioned(
                  bottom: 0,right: 0,
                  child: Container(width: 20,height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.amber

                   ),child: Icon(Icons.edit,size: 20,),
                  ),
                )
              ],
            ),
              Text('Nicolas Adams',
                style: TextStyle(color: Colors.white),
              ),
              Text('nicolas@gmail.com',
                style: TextStyle(color: Color(0xff545456,),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),

              ElevatedButton(
                style:ElevatedButton.styleFrom(backgroundColor: Color(0xfff9c207),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                ),
                onPressed: () {},
                child: Text('upgrade to pro',style: TextStyle(color: Colors.black),),
              ),
              SizedBox(height: 10,),

              SettingList(text: 'Privacy',Preffixicon: Icons.person_outline, Suffixicon: Icons.arrow_forward_ios_rounded),
              SettingList(text: 'Purchase History',Preffixicon: Icons.history, Suffixicon: Icons.arrow_forward_ios_rounded),
              SettingList(text: 'Help and Support',Preffixicon: Icons.contact_support, Suffixicon: Icons.arrow_forward_ios_rounded),
              SettingList(text: 'Settings',Preffixicon: Icons.settings, Suffixicon: Icons.arrow_forward_ios_rounded),
              SettingList(text: 'Invite a Friend',Preffixicon: Icons.person_add_alt_1, Suffixicon: Icons.arrow_forward_ios_rounded),
              SettingList(text: 'Logout',Preffixicon: Icons.logout_rounded, Suffixicon: Icons.arrow_forward_ios_rounded),

          ],),
        ),
      ),
    );
  }
}
// child: GestureDetector(
//   onTap: (){
//     Navigator.push(context, MaterialPageRoute(
//         builder: (context) { return Vestimate(); }
//          ),
//          );
//   },