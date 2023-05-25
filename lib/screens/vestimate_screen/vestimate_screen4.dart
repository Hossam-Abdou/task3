import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'inkwell_sceen.dart';

class Vestimate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:  Color(0xfff6f7fc),
      appBar: AppBar(backgroundColor: Colors.white,elevation: 0,
        title: Text('vestimate',style: TextStyle(color:  Color(0xff7968f4),fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        toolbarHeight: 70, // default 56.0
      ),
      body:Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Choose yoour area',style: TextStyle(color:  Colors.black,fontSize: 20)),

            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 11,
                  children: [
                    ink(icons: Icons.shopping_cart,text: 'Cart',color: Colors.white,tapped:  Color(0xff7968f4) ,),
                    ink(icons:Icons.warehouse_outlined,text:'Selling',color:    Color(0xff7968f4),tapped: Colors.white,),
                    ink(icons:Icons.shopping_bag_outlined,text:'Trades',color:  Color(0xff7968f4),tapped: Colors.white,),
                    ink(icons:Icons.video_library_rounded,text:'Videos',color:  Color(0xff7968f4),tapped: Colors.white,),
                    ink(icons:Icons.percent_sharp,text:'Deals',color:  Color(0xff7968f4) ,tapped: Colors.white,),
                    ink(icons:Icons.menu_book,text:'Case Study',color:  Color(0xff7968f4),tapped: Colors.white,),

                ],),
              ),),
          ],),
      ),

      bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
        icon: Icon(Icons.home,),
        label: 'Home',
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.padding_sharp,),
        label: 'cart',
        ),
        BottomNavigationBarItem(
        icon: Icon(Icons.mode_comment),
        label: 'chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'search',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'profile',
        ),
        ],
        selectedItemColor: Color(0xff7968f4),unselectedItemColor: Colors.grey[400] ,
        currentIndex: 0,
      ),

    );
  }
}
