import 'package:flutter/material.dart';
import 'page/dashboard/dashboard.dart';
import 'page/transaction/transaction.dart';
import 'page/product/product.dart';
import 'page/signin/sign.dart';
import 'page/splash/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart'; // Corrected import

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/dashboard': (context) => Dashboard(),
        '/transaction': (context) => Transactions(),
        '/product': (context) => Products(),
        '/sign': (context) => Sign(),
      },
    );
  }
}