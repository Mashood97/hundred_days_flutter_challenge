import 'package:flutter/material.dart';
import 'package:hundreddaysflutterchallenge/screens/auth_screen.dart';
import './screens/home_screen.dart';

void main() {
  runApp(HomeConfig());
}

class HomeConfig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.lightGreen,
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          )),
      initialRoute: '/',
      routes: {
        '/': (ctx) => AuthScreen(),
        HomeScreen.routeArgs: (ctx) => HomeScreen(),
//        AuthScreen.auth_route_args: (ctx) => AuthScreen(),
      },
    );
  }
}
