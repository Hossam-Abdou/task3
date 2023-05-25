import 'package:flutter/Material.dart';

class GalleryComponent extends StatelessWidget {
String? galleryName;
String? galleryProducts;
String? galleryImage;
String? ImageName;

GalleryComponent({
      this.galleryName,
      this.galleryProducts,
      this.galleryImage,
      this.ImageName
});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Color(0xfffdfdfd)),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(alignment:Alignment.bottomCenter,
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(20),
                    child: Image.network(galleryImage!),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(ImageName!,style: TextStyle(color: Colors.white),),
                  ),
                ],),
              Text(galleryName!),
              Text(galleryProducts!),
              SizedBox(height: 10,),
              Center(
                child: ElevatedButton(
                  onPressed: (){},
                  child:  Text('Buy Now'),
                  style: ButtonStyle(backgroundColor:MaterialStateProperty.all(
                      Colors.black),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius:BorderRadius.circular(10) ))
                  ),
                ),
              )
            ],),
        ),),
    );
  }
}

class GalleryDetials extends StatelessWidget {
String? firstText;
String? secondText;
Color? containerColor;
Color? secondTextColor;

GalleryDetials({
      this.firstText,
      this.secondText,
      this.containerColor,
      this.secondTextColor
});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(20),
          color: containerColor,
        ),

        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(firstText!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20)),
            Text(secondText!,style: TextStyle(color: secondTextColor, fontWeight: FontWeight.bold), ),
          ],),
      ),
    );
  }
}


