import 'package:flutter/Material.dart';

class CartCateogries extends StatelessWidget {
String? name;
String? category;

CartCateogries({this.name, this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name!),
        TextButton(onPressed: (){},
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color(0xfffdedf0)) ),
            child: Text(category!,style: TextStyle(color: Color(0xffedbbbb)),)),

      ],
    );
  }
}

