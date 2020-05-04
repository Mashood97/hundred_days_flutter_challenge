import 'package:flutter/material.dart';

class VerifyphoneTextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textAlign: TextAlign.center,
        maxLength: 4,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).accentColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: 'Enter your number',
          hintStyle: TextStyle(
            color: Colors.white,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
