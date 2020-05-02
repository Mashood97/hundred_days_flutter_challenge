import 'package:flutter/material.dart';

class VerifyphoneTextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      margin: EdgeInsets.all(10),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: '0',
          ),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          maxLength: 1,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
