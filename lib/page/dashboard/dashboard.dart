import 'package:flutter/material.dart';
import '../../component/drawer/drawer.dart';

class Dashboard extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: Text('Dashboard')
            ),
            drawer: AppDrawer(),
            body: Center(
                child:  Text('Dashboardddddd page'),
            ),
        );
    }
}