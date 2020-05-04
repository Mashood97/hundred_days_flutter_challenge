import 'package:flutter/material.dart';
import '../screens/chat_screen.dart';
import '../screens/group_screen.dart';
import '../screens/status_screen.dart';
import 'calls_screen.dart';
class TabsHomeScreen extends StatefulWidget {
  
  static const routeArgs = '/tabs-screen';
  @override
  _TabsHomeScreenState createState() => _TabsHomeScreenState();
}

class _TabsHomeScreenState extends State<TabsHomeScreen> {

   List<Map<String, Object>> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      {'page': ChatScreen(), 'title': 'Chats'},
      {'page': GroupScreen(), 'title': 'groups'},
      {'page': StatusScreen(), 'title': 'status'},
      {'page': CallScreen(), 'title': 'Calls'},
    ];
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedIndex,
        elevation: 5,
//        type: BottomNavigationBarType.shifting,
        onTap: _selectedPage,
        items: [
          BottomNavigationBarItem(
//            backgroundColor: Theme.of(context).primaryColor, for type = shifting
            icon: Icon(Icons.message),
            title: Text('Chats'),
          ),
          BottomNavigationBarItem(
//            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.group),
            title: Text('Groups'),
          ),
           BottomNavigationBarItem(
//            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.image),
            title: Text('Status'),
          ),
           BottomNavigationBarItem(
//            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.call),
            title: Text('Calls'),
          ),
        ],
      ),
    );
  }
}