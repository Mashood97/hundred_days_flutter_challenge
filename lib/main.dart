import 'package:flutter/material.dart';
import 'package:hundreddaysflutterchallenge/screens/tabs_home_screen.dart';
import './screens/verify_number_screen.dart';
import './screens/auth_screen.dart';
import './screens/chat_screen.dart';

void main() {
  runApp(HomeConfig());
}

class HomeConfig extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Color(0xFF0B1033),
          accentColor: Colors.pinkAccent,
        
          canvasColor: Colors.black,
          fontFamily: 'Roboto',
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),),
      initialRoute: '/',
      routes: {
        '/': (ctx) => AuthScreen(),
        VerifyPhoneNumber.routeArgs: (ctx) => VerifyPhoneNumber(),
        ChatScreen.routeArgs: (ctx) => ChatScreen(),
        TabsHomeScreen.routeArgs: (ctx) => TabsHomeScreen(),
      },
    );
  }
}
