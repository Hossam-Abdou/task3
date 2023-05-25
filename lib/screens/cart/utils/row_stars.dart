import 'package:flutter/Material.dart';

class RowStars extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star, color: Colors.yellow[400],
        ),
        Icon(
          Icons.star, color: Colors.yellow[400],
        ),
        Icon(
          Icons.star, color: Colors.yellow[400],
        ),
        Icon(
          Icons.star, color: Colors.yellow[400],
        ),
        Icon(
          Icons.star, color: Colors.grey[400],
        ),
        Text('4/5 (12)'),
      ],
    );
  }
}
