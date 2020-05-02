import 'dart:io';

import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '../screens/verify_number_screen.dart';
import 'package:image_picker/image_picker.dart';

class AuthScreen extends StatefulWidget {
  static const auth_route_args = '/auth-screen';

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String country_code;

  String phoneNum;

  String phoneCode;

  String userName;

  File _image;
  String verificationId;
  int forceResendCode;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  //  Future<bool> _loginUser(String phone, BuildContext context) async {
  //    FirebaseAuth _auth = FirebaseAuth.instance;
  //    _auth.verifyPhoneNumber(
  //        phoneNumber: phone,
  //        timeout: Duration(seconds: 60),
  //        verificationCompleted: (AuthCredential credential) async {
  //          Navigator.of(context).pop();
  //          AuthResult result = await _auth.signInWithCredential(credential);
  //          FirebaseUser user = result.user;
  //          if (user != null) {
  //            await _firestore.collection('users').add({
  //              'name': userName,
  //              'phoneNum': phoneNum,
  //              'dateTime': DateFormat.yMMMEd().format(DateTime.now()),
  //              'image': _image.uri.toFilePath(),
  //            });
  //            Navigator.of(context)
  //                .pushReplacementNamed(HomeScreen.routeArgs, arguments: user);
  //          } else {
  //            print('error occured while sending code');
  //          }
  //        },
  //        verificationFailed: (AuthException exception) {
  //          print(exception.message);
  //        },
  //        codeSent: (String verificationId, [int forceResendCode]) {
  //          showDialog(
  //            context: context,
  //            barrierDismissible: false,
  //            builder: (context) => AlertDialog(
  //              title: Text(
  //                'Enter the code',
  //                style: Theme.of(context).textTheme.title,
  //              ),
  //              content: Column(
  //                mainAxisSize: MainAxisSize.min,
  //                children: <Widget>[
  //                  TextField(
  //                    onChanged: (val) {
  //                      phoneCode = val;
  //                    },
  //                  ),
  //                  SizedBox(
  //                    height: 15,
  //                  ),
  //                ],
  //              ),
  //              actions: <Widget>[
  //                FlatButton(
  //                  child: Text('Confirm'),
  //                  onPressed: () async {
  //                    AuthCredential credential = PhoneAuthProvider.getCredential(
  //                        verificationId: verificationId, smsCode: phoneCode);
  //                    AuthResult result =
  //                    await _auth.signInWithCredential(credential);
  //                    FirebaseUser user = result.user;
  //                    if (user != null) {
  //                      Navigator.of(context)
  //                          .pushReplacementNamed(HomeScreen.routeArgs);
  //                    } else {
  //                      print('error occured while sending code');
  //                    }
  //                  },
  //                  textColor: Colors.white,
  //                  color: Theme.of(context).primaryColor,
  //                )
  //              ],
  //            ),
  //          );
  //        },
  //        codeAutoRetrievalTimeout: null);
  //  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
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
                GestureDetector(
                  onTap: getImage,
                  child: CircleAvatar(
                    backgroundImage: _image == null
                        ? AssetImage('asset/images/interface.png')
                        : FileImage(_image),
                    radius: 40,
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
                    searchDecoration:
                        InputDecoration(labelText: 'Search Country'),
                    onChanged: (value) {
                      country_code = value.toString();
                      print(country_code);
                    },
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
//                favorite: ['+92', 'PK'],
                    // optional. Shows only country name and flag
                    showCountryOnly: false,
                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                  ),
                ),
                TextField(
                  onChanged: (val) {
                    userName = val;
                  },
                  decoration: InputDecoration(
                    labelText: 'Enter Your Name',
                    hintText: 'e.g xyz',
                    icon: Icon(Icons.phone_iphone),
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  onChanged: (val) {
                    phoneNum = val;
                  },
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
                  color: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Text(
                    'Register',
                    style: Theme.of(context).textTheme.title,
                  ),
                  onPressed: () {
                    String phoneNumber = country_code + phoneNum;
                    print(phoneNumber);
                    Navigator.of(context)
                        .pushReplacementNamed(VerifyPhoneNumber.routeArgs);
////                    _loginUser(phoneNumber, context);
                  },
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
