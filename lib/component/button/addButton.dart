import 'package:flutter/material.dart';

class AddButton extends StatelessWidget{
    final VoidCallback onPressed;

    const AddButton({required this.onPressed, Key? key}): super(key: key);

    @override
    Widget build(BuildContext context){
        return FloatingActionButton(
            onPressed: onPressed,
            child: Icon(Icons.add),
        );
    }
}