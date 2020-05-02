import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeArgs = '/homescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      drawer: Drawer(),
    );
  }
}
