import 'package:flutter/material.dart';
import '../widgets/chat_listtile.dart';

class ChatScreen extends StatelessWidget {
  static const routeArgs = '/home-screen';

  final users_list_messages = [
    {
      'username': 'Amy',
      'image':
          'https://images.pexels.com/photos/712521/pexels-photo-712521.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'message': 'Hello Mashood',
      'isNew': true,
      'day': '',
    },
    {
      'username': 'John',
      'image':
          'https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'message': 'Whats up buddy?',
      'isNew': false,
      'day': 'Yesterday',
    },
    {
      'username': 'Jackson',
      'image':
          'https://images.pexels.com/photos/842548/pexels-photo-842548.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'message': 'Meeting at 5 pm on coming saturday',
      'isNew': true,
      'day': '',
    },
    {
      'username': 'Alexa',
      'image':
          'https://images.pexels.com/photos/1065084/pexels-photo-1065084.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'message': 'Where you lost?',
      'isNew': false,
      'day': '2 days ago',
    },
    {
      'username': 'Markovic',
      'image':
          'https://images.pexels.com/photos/839586/pexels-photo-839586.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'message': 'Fifa Tonight',
      'isNew': false,
      'day': '3 days ago',
    },
    {
      'username': 'Jenny',
      'image':
          'https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'message': 'Hey lad? Hows going?',
      'isNew': false,
      'day': 'Yesterday',
    },
    {
      'username': 'Max',
      'image':
          'https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'message': 'Meetup?',
      'isNew': false,
      'day': 'a week ago',
    },
  ];

  Widget headerHomeScreen() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Chats',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 2),
          ),
          Chip(
            backgroundColor: Colors.amber,
            label: Text('New'),
            shadowColor: Colors.pinkAccent,
            elevation: 5,
            avatar: Icon(Icons.add),
          )
        ],
      ),
    );
  }

  Widget searchTextField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLength: 4,
        keyboardType: TextInputType.text,
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
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          hintText: 'Search...',
          hintStyle: TextStyle(
            color: Colors.white54,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }

  Widget list_messages() {
    return Expanded(
      child: ListView.separated(
        itemCount: users_list_messages.length,
        itemBuilder: (ctx, i) => ChatListTile(
          username: users_list_messages[i]['username'],
          image: users_list_messages[i]['image'],
          day: users_list_messages[i]['day'],
          isNew: users_list_messages[i]['isNew'],
          message: users_list_messages[i]['message'],
        ),
        separatorBuilder: (ctx, i) => Divider(
          color: Colors.white30,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            headerHomeScreen(),
            SizedBox(
              height: 10,
            ),
            searchTextField(context),
            list_messages(),
          ],
        ),
      ),
    );
  }
}
