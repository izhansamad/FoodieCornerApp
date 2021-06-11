import 'package:flutter/material.dart';

class BbqMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        bbqItem('https://www.spicytime.ca/wp-content/uploads/2015/11/spicytime_0112_CHICKEN-TIKKA-BONE.jpg', 'Tikka Leg', '160'),
        bbqItem('https://img-global.cpcdn.com/recipes/c18dea52e3c36e1c/1200x630cq70/photo.jpg', 'Tikka Chest', '180')

      ],
    );
  }
}
Widget bbqItem(String image, String title, String price ){
  return Card(
          color:  Color.fromRGBO(255, 240, 212,1),
          child: ListTile(
            leading: Image(image: NetworkImage(image),),
              title: Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
              trailing: Text(price ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17) )
            ),
        );
}