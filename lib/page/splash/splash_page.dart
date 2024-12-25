import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget{
    @override
    _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>{
    @override
    void initState(){
        super.initState();
        checkToken();
    }

    Future<void> checkToken() async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwidXNlcm5hbWUiOiJ6ZXJvIiwiaWF0IjoxNzM0OTMxMTYyLCJleHAiOjE3MzQ5MzQ3NjJ9.B0v5UZe8ZpHIw5j2_yiOw78UgXrqP8zQVbBVckb0n60');
        final token = prefs.getString('token');
        if (token == null){
            print('no token cok');
            Navigator.pushReplacementNamed(context, '/sign');
        }else {
            print('ada token cok');
            Navigator.pushReplacementNamed(context, '/dashboard');
        }
    }

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: Center(
                child: CircularProgressIndicator()
            ),
        );
    }
}