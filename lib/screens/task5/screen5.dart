import 'package:flutter/Material.dart';

import 'gallery_component.dart';

class Gallery extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xfff5f4fa),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: SafeArea(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
            Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/images/human.jpg'),
                ), ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.confirmation_number_rounded),
                Text('022 v0 550'),
              ],
            ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GalleryDetials(
                      containerColor:Color(0xff33386e) ,
                      firstText:'2' ,
                      secondText:'Unclaimed' ,
                      secondTextColor: Color(0xff616381)
                  ),
                  SizedBox(width: 10,),
                  GalleryDetials(
                      containerColor:Color(0xff8d73f1) ,
                      firstText:'\$2,800' ,
                      secondText:'Monthly Earn',
                      secondTextColor: Color(0xffa0a4c8)
                  ),

                ],),
             SizedBox(height: 10,),

             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Action Required'),
                  CircleAvatar(radius: 10,backgroundColor: Color(0xff0d0d3e),child: Text('18',style: TextStyle(fontSize: 10)),)
               ],
             ),
              SizedBox(height: 10,),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfffefefe)),
                    child: ListTile(
                      leading:CircleAvatar(radius: 18,backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/811/811730.png'),),
                        title: Text('Verify Art profile',style: TextStyle(fontWeight: FontWeight.bold),),
                      subtitle: Text('Now art pioco profile require your verfication'),
                      trailing: Text('1hr'),
                    ),
                  ),

              Row(
                children: [
                Text('Gallery'),
                Spacer(),
                TextButton(onPressed: (){}, child: Text('see all',style: TextStyle(color: Color(0xffa9a8ad),fontSize: 13),),),
              ],),
              SizedBox(height: 12,),

              Row( children: [
                GalleryComponent(
                    galleryName:'Slouching towards',
                    galleryProducts:'Oil,spray point',
                    galleryImage:'https://img.freepik.com/free-photo/abstract-eye-portrait-young-women-elegance-generated-by-ai_188544-9712.jpg',
                    ImageName:'Placeholder image'
                ),

                SizedBox(width: 8,),

                GalleryComponent(
                    galleryName:'King Grin',
                    galleryProducts:'Oil On Canvas',
                    galleryImage:'https://img.freepik.com/free-photo/abstract-eye-portrait-young-women-elegance-generated-by-ai_188544-9712.jpg',
                    ImageName:'Placeholder image'
                ),
              ],)
          ],),
        ),
      ),
    );
  }
}
