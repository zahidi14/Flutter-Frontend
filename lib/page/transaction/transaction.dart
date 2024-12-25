import 'package:flutter/material.dart';
import '../../component/drawer/drawer.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: Center(
        child: Text('transaction page'),
      ),
      drawer: AppDrawer(), // Use your custom AppDrawer here
    );
  }
}