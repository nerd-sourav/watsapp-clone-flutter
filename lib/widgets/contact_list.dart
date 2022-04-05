import 'package:flutter/material.dart';
import 'package:watsapp_clone/colors.dart';
import 'package:watsapp_clone/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    NetworkImage(info[index]['profilePic'].toString()),
              ),
              title: Text(info[index]['name'].toString()),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(info[index]['message'].toString()),
              ),
              trailing: Text(
                info[index]['time'].toString(),
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
          );
        }),
        itemCount: info.length,
      ),
    );
  }
}
