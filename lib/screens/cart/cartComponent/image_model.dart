import 'package:flutter/Material.dart';
import 'package:task3/screens/cart/cartComponent/image_model.dart';
class ImageModel
{
  String? image;

  ImageModel({this.image});
}
Widget ChangedImage(ImageModel model)=>
    Column(
      children: [
        Stack(
  children: [
        Center(
          child: Container(
            child: ClipRRect(borderRadius: BorderRadius.circular(20),
              child: Image.network(fit: BoxFit.fill,width: 350, '${model.image}'),
            ),),
        ),
        Center(
          child: Container(
            margin: EdgeInsets.only(top: 5),
            width: 340,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(  Icons.edit,color: Colors.white,),
                Icon( Icons.heart_broken_sharp,color: Colors.white,)
              ],),
          ),
        ),
  ],
),
      ],
    );