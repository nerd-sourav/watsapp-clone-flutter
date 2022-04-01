import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:watsapp_clone/colors.dart';
import 'package:watsapp_clone/info.dart';

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
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
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
          ),
          floatingActionButton: const CircleAvatar(
            radius: 25,
            child: Icon(Icons.message_outlined),
            backgroundColor: messageColor,
          )),
    );
  }
}
