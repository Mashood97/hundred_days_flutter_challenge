import 'package:flutter/material.dart';
import 'package:hundreddaysflutterchallenge/screens/home_screen.dart';
import '../widgets/verify_phone_list.dart';

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
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 20,
                ),
                verify_phone_listview(),
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  splashColor: Colors.deepOrangeAccent,
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(HomeScreen.routeArgs);
                  },
                  child: Text(
                    'Verify',
                    style: Theme.of(context).textTheme.title,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  splashColor: Theme.of(context).primaryColor,
                  child: Text('Resend OTP? Click here'),
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
