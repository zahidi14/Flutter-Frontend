import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppDrawer extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Drawer Header',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: Text('Dashboard'),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/dashboard');
            },
          ),
          ListTile(
            title: Text('Transactions'),
            leading: Icon(Icons.monetization_on),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/transaction');
            },
          ),
          ListTile(
            title: Text('Products'),
            leading: Icon(Icons.shopping_cart),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/product');
            },
          ),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              Navigator.pop(context);
            
              logout(context);
            },
          ),
        ],
      ),
    );
  }
}

Future<void> logout(BuildContext context) async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('token');
  Navigator.pushReplacementNamed(context, '/sign');
  print('Logout');
}