import 'package:flutter/material.dart';
import 'package:hundreddaysflutterchallenge/screens/tabs_home_screen.dart';
import '../screens/chat_screen.dart';
import '../widgets/verify_phone_textfiekd.dart';
class VerifyPhoneNumber extends StatelessWidget {
  static const routeArgs = '/verify-phone-number';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Please enter the OTP sent\non your registered phone number.',
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                VerifyphoneTextfield(),
                
                RaisedButton(
                  splashColor: Colors.amber,
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(TabsHomeScreen.routeArgs);
                  },
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  splashColor: Colors.amber,
                  child: Text(
                    'Resend OTP? Click here',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
