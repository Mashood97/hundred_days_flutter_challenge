import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class AuthScreen extends StatelessWidget {
  static const auth_route_args = '/auth-screen';
  String country_code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Register Yourself',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: CountryCodePicker(
                    searchDecoration: InputDecoration(
                        labelText: 'Search Country'),
                    onChanged: (value) {
                      country_code = value.toString();
                      print(country_code);
                    },
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'PK',
                    favorite: ['+92', 'PK'],
                    // optional. Shows only country name and flag
                    showCountryOnly: false,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Your Phone Number',
                    hintText: 'e.g 3352655824',
                    icon: Icon(Icons.phone_iphone),
                  ),
                  keyboardType: TextInputType.number,
                ),

                SizedBox(
                  height: 15,
                ),

                RaisedButton(
                  color: Theme
                      .of(context)
                      .primaryColor,
                  child: Text(
                    'Register',
                    style:Theme.of(context).textTheme.title,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          )),
    );
  }
}
