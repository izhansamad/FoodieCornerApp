import 'package:flutter/material.dart';
import 'drawer.dart';
import 'menu.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/' : (context) => MyApp(),
      '/Menu': (context) => Menu(), 
    },
  ));
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(26, 32, 30, 1),
          title: Text(
            'FOODIE CORNER',
            style: TextStyle(
                color: Color.fromRGBO(247, 117, 26, 1),
                letterSpacing: 1.8,
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Tooltip(message: 'Cart',
              child: IconButton(
                  icon: Icon(
                    Icons.card_travel,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            )
          ],
        ),
        drawer: MyDrawer(),
        body: Center(
          child: Column(
            children: [
              Container(
                height: 140,
                width: double.infinity,
                child: Image.asset('assets/images/bgg.jpg', fit: BoxFit.cover,)
              ),
              SizedBox(
                height: 5.0,
              ),
              Material(
                color: Color.fromRGBO(247, 117, 26, 0.8),
                child: InkWell(
                  onTap: () {Navigator.pushNamed(context, '/Menu');
                  selectedIndex = 0;

                  },
                  child: Row(
                    children: [
                      SizedBox(width: 5),
                      Image.asset(
                        'assets/images/deals.png',
                        height: 80,
                        width: 150,
                      ),
                      Center(
                          child: Text(
                        'Exclusive Deals',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          letterSpacing: 1.4,
                        ),
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Center(
                child: Text(
                  'CATEGORIES',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30,
                    letterSpacing: 1.8,
                  ),
                ),
              ),
              Categories(),

            ],
          ),
        ));
  }
}

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              // childAspectRatio: 1.3,
              crossAxisSpacing: 16,
            ),
            children: [
              category("BBQ", "assets/images/bbq.jpg",1, context,),
              category("Burgers", "assets/images/burger.jpg",2, context),
              category("Sandwiches", "assets/images/sandwich.jpg",3, context),
              category("Pizza", "assets/images/pizza.jpg",4, context),
              category("Biryani", "assets/images/biryani1.jpg",5, context),
              category("Chinese", "assets/images/chinese.jpg",6, context),
              category("Karhai", "assets/images/desi.jpg",7, context),
              category("Desserts", "assets/images/dessert.jpg",8, context),
              category("Paratha", "assets/images/Paratha.jpg",9, context),
              category("Drinks", "assets/images/drinks.jpg",10, context),
            ]),
      ),
    );
  }
}
Widget category(String categoryname, String categoryimage,int newIndex, context ) {
  return Stack(
    children: <Widget>[
      Column(
        children: [
          Image.asset(categoryimage, height: 130, fit: BoxFit.cover),
          SizedBox(height: 3),
          Center(
            child: Text(
              categoryname,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber[800]),
            ),
          ),
        ],
      ),
      Positioned.fill(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () { Navigator.pushNamed(context, '/Menu');
            selectedIndex = newIndex;
            print('New Index $selectedIndex');
            },
          ),
        ),
      ),
    ],
  );
}