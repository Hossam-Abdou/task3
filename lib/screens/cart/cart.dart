import 'package:flutter/Material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task3/screens/cart/utils/row_stars.dart';

import '../shared_Component/button.dart';
import 'CartCateogries.dart';
import 'cartComponent/image_model.dart';

class Cart extends StatelessWidget {

  var page=PageController(); // controller

  List<ImageModel> counter=[
    ImageModel(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0p2j_tyVCfuCW1iqf5Y8BAp-2w2DtF5NMu3rmJrryW9bciXHbjsecgscMrIyhoLkfoRI&usqp=CAU'),
    ImageModel(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0p2j_tyVCfuCW1iqf5Y8BAp-2w2DtF5NMu3rmJrryW9bciXHbjsecgscMrIyhoLkfoRI&usqp=CAU'),
    ImageModel(image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0p2j_tyVCfuCW1iqf5Y8BAp-2w2DtF5NMu3rmJrryW9bciXHbjsecgscMrIyhoLkfoRI&usqp=CAU'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(height: 360,
                child: PageView.builder(

                  controller: page,
                    itemCount:counter.length ,
                    itemBuilder:(context,index)=>
                        ChangedImage(counter[index])),
              ),
              SizedBox(height: 10,),
              SmoothPageIndicator(controller: page, count: counter.length,),
              SizedBox(height: 10,),

              Container(width: 300,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('C2 Analog Clock',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Text('\$540',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xfff0bec0)),),
                    ],),
                    RowStars(),

                    Text('A classically designed analog clock that would add', style: TextStyle(fontSize: 12,color: Colors.grey)),
                    Text('to the dector of your house analog clock has hour', style: TextStyle(fontSize: 12,color: Colors.grey)),
                    Text('minutes and seconds hands', style: TextStyle(fontSize: 12,color: Colors.grey)),
                  SizedBox(height: 15,),
                    Row(children: [
                      CartCateogries(name:'Type',category: 'Analog',),

                    SizedBox(width: 10,),
                      CartCateogries(name:'Material',category: 'Plastic',),
                  ],),
                    SizedBox(height: 15,),
                    Button(containerWidth:double.infinity,containerHeight: 50, buttonColor: Colors.black,buttonText:'Add to cart',containerRadius: 10),
                  ],
                ),
              ),


          ],),
        ),
      ),
    );
  }
}

