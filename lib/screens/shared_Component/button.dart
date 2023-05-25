import 'package:flutter/Material.dart';
 // elevated button used at many screens
class Button extends StatelessWidget {
  Color? buttonColor;
  Color? textColor;
  double? containerWidth;
  double? containerHeight;
  double? containerRadius;
  String? buttonText;


  Button({this.buttonColor, this.containerWidth, this.buttonText,this.containerHeight,this.containerRadius,this.textColor});

  @override
  Widget build(BuildContext context) {
    return
      Container(
          width: containerWidth,height: containerHeight,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(containerRadius!)),
          child: ElevatedButton(onPressed: (){},
            style: ButtonStyle( backgroundColor: MaterialStateProperty.all( buttonColor,),
            ),
            child: Text(buttonText!,style: TextStyle(color:textColor),),
          ));
  }
}
