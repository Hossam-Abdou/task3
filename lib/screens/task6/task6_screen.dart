import 'package:flutter/material.dart';
import 'package:task3/screens/task6/list_details.dart';

class FinalScreen extends StatelessWidget {
  // list of colors
  var m=[
    Color(0xff7ea3f3),
    Color(0xfff0a65f),
    Color(0xffea5976),
    Color(0xffa97cf3),
    Color(0xff6ae3c2),
  ];
  @override
  Widget build(BuildContext context) {
   
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Color(0xffd366f5),
          leading:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
          actions: [ IconButton(onPressed: (){}, icon: Icon(Icons.menu)),],
          bottom: TabBar(indicatorColor: Colors.white,padding: EdgeInsets.symmetric(horizontal: 35),
              tabs: [
            Tab(text: 'Designer'),
            Tab(text: 'Category'),
            Tab(text: 'Attenton'),
          ])
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index)
          {
            return Center(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 300,height: 150,
                    decoration: BoxDecoration(
                      color:m[index],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: AssetImage('assets/images/human.jpg'),
                            ),
                            SizedBox(width: 5,),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('David borg',
                                  style: TextStyle(color: Colors.white),),
                                Text('title:flying wings',
                                  style: TextStyle(color: Colors.white),),
                              ],),
                            Spacer(),
                            Column(
                              mainAxisAlignment:MainAxisAlignment.center,
                              children: [
                                Row(children: [
                                  Icon(Icons.star,color: Colors.white,size: 13,),
                                  Icon(Icons.star,color: Colors.white,size: 13,),
                                  Icon(Icons.star,color: Colors.white,size: 13,),
                                ],),
                                SizedBox(height: 10,),
                                Text('1',style: TextStyle(color: Colors.white),),
                                Text('Ranking',style: TextStyle(color: Colors.white),),
                              ],)
                          ],),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Data(listDetails(numbers:'2342' ,text:'Popularity'), ),SizedBox(width: 8,),
                              Data(listDetails(numbers:'4736' ,text:'Like'), ),SizedBox(width: 8,),
                              Data(listDetails(numbers:'135' ,text:'Followed'), ),

                            ],),
                        ],),
                    ),
                  ),
                )
              ],),
            );
          },

        )
      ),
    );
  }}

