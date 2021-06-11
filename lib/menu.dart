import 'package:flutter/material.dart';
import 'bbq.dart';
class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}
    // final mycontroller = PageController(
    //  initialPage: selectedIndex,
    // ) ;

    PageController mycontroller;

class _MenuState extends State<Menu> {      
  @override
  void initState() {
    super.initState();
    setState(() {
    mycontroller = PageController(initialPage: selectedIndex);
        });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 240, 212,1),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(26, 32, 30, 1),
          title: Text(
            'MENU',
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
        // drawer: MyDrawer(),
        body: Column(children: [
          MenuItems(),
          Expanded(
            child: PageView(
              controller: mycontroller,
              onPageChanged: (index){
                setState((){
                    selectedIndex = index;
                    print('Selected Index $selectedIndex');
                    });
              },
              children: [
                Container(color: Colors.brown, child: Text('Deals')),
                BbqMenu(),
                Container(color: Colors.blue,child: Text('Burgers')),
                Container(color: Colors.green,child: Text('Sandwiches')),
                Container(color: Colors.orange[400],child: Text('Pizza')),
                Container(color: Colors.indigo,child: Text('Biryani')),
                Container(color: Colors.white ,child: Text('Chinese')),
                Container(color: Colors.purple,child: Text('Karhayi')),
                Container(color: Colors.grey,child: Text('Desserts')),
                Container(color: Colors.green,child: Text('Paratha')),
                Container(color: Colors.red[800],child: Text('Drinks')),
              ],
            ),
          ),
          
        ],
        )
    );
  }
}


int selectedIndex;
class MenuItems extends StatefulWidget {
  @override
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  List<String> menuitems =["Deals","BBQ", "Burgers","Sandwiches","Pizza","Biryani","Chinese","Karhai","Desserts","Paratha","Drinks"];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange[100],
      height: 50,
      child: ListView.builder(itemCount: menuitems.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: (){
                setState((){
                  selectedIndex = index;
                  mycontroller.animateToPage(selectedIndex, duration: Duration(milliseconds: 350 ), curve: Curves.bounceInOut);
                });
              },
              child: Padding(padding: EdgeInsets.all(13),
              child: Text(menuitems[index],
      style: TextStyle(
        fontSize: selectedIndex == index ? 23 : 20,
        fontWeight: FontWeight.bold,
        color: selectedIndex == index ? Colors.orange[900] : Colors.black,
      ),),
              ),
            );
          }),
    );
  }
}