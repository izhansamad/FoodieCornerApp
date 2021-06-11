import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(255, 240, 212,1),
        height: double.infinity,
        child: Column(children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 120, 0, 15),
            color: Color.fromRGBO(247, 117, 26, 0.9),
            child: Column(children: [
              Container(
                width: double.infinity,
                child: Text('Welcome',textAlign:TextAlign.left , style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                ),),
              ),
              SizedBox(height: 3,),
              GestureDetector(
                onTap: (){},
                child: Row(
                  children: [
                    Text('Login ',style: TextStyle(color: Colors.black, fontSize: 20),),
                    Icon(Icons.arrow_forward, color: Colors.black, size: 20),
                  ],
                ),
              ),
            ],),
          ),
          ListTile(
              onTap: (){},
              leading: Icon(Icons.account_circle, color: Color.fromRGBO(247, 117, 26, 1)),
              title: Text('Profile'),
            ),  
            ListTile(
              onTap: (){},
              leading: Icon(Icons.history, color: Color.fromRGBO(247, 117, 26, 1),),
              title: Text('My Orders' ),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.location_on, color: Color.fromRGBO(247, 117, 26, 1)),
              title: Text('My Addresses'),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.account_balance_wallet_rounded, color: Color.fromRGBO(247, 117, 26, 1)),
              title: Text('Wallet'),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.confirmation_num_sharp, color: Color.fromRGBO(247, 117, 26, 1)),
              title: Text('Vouchers'),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.settings, color: Color.fromRGBO(247, 117, 26, 1)),
              title: Text('Settings'),
            ),
            ListTile(
              onTap: (){},
              leading: Icon(Icons.logout, color: Color.fromRGBO(247, 117, 26, 1)),
              title: Text('Logout'),
            ),
        ],),
      ),
    );
  }
}