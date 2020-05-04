import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  final username;
  final message;
  final image;
  final isNew;
  final day;
  ChatListTile({this.username, this.image, this.isNew, this.message, this.day});
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      key: UniqueKey(),
      child: ListTile(
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
      ),
    );
  }
}
