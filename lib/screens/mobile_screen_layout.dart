import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watsapp_clone/colors.dart';
import 'package:watsapp_clone/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () => {},
              icon: const Icon(CupertinoIcons.search, color: Colors.grey),
            ),
            IconButton(
                onPressed: () => {},
                icon: const Icon(CupertinoIcons.ellipsis_vertical,
                    color: Colors.grey))
          ],
          bottom: const TabBar(
            labelPadding: EdgeInsets.all(10),
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: [
              Text('CHATS'),
              Text('STATUS'),
              Text('CALLS'),
            ],
          ),
        ),
        body: const ContactList(),
        floatingActionButton:  CircleAvatar(
          radius: 25,
          child: Icon(Icons.message_rounded),
          backgroundColor: messageColor,
        ),
      ),
    );
  }
}
