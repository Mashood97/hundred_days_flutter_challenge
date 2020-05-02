import 'package:flutter/material.dart';
import 'verify_phone_textfiekd.dart';

class verify_phone_listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.all(15),
      alignment: Alignment.center,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) => VerifyphoneTextfield()),
    );
  }
}
