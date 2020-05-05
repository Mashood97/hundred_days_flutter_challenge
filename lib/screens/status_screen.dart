import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
        child: Text('Status Screen',style: TextStyle(
          color: Theme.of(context).accentColor,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      ),);
  }
}