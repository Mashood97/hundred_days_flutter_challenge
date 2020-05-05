import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatListTile extends StatelessWidget {
  final username;
  final message;
  final image;
  final isNew;
  final day;
  ChatListTile({this.username, this.image, this.isNew, this.message, this.day});


  Widget listtileView(BuildContext context){
    return ListTile(
        leading: GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                backgroundColor: Colors.black54.withOpacity(0.2),
                content: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            );
          },
          child: CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 30,
          ),
        ),
        title: Text(
          username,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
        ),
        subtitle: Text(
          message,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        trailing: isNew
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'New',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                    ),
                  ),
                  CircleAvatar(
                    child: Text(
                      '1',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    radius: 10,
                    backgroundColor: Colors.pinkAccent,
                  )
                ],
              )
            : Text(
                day,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
      );
  }
  @override
  Widget build(BuildContext context) {
    return Slidable(
      delegate: SlidableStrechDelegate(),
      actions: <Widget>[
        CircleAvatar(
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
        ),
        CircleAvatar(
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        CircleAvatar(
          child: Icon(
            Icons.video_call,
            color: Colors.white,
          ),
          backgroundColor: Colors.amberAccent,
        ),
      ],
      actionExtentRatio: 0.15,
      child: listtileView(context),
    );
  }
}
