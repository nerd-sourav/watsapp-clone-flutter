import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
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
              icon: const Icon(
                CupertinoIcons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () => {},
              icon: const Icon(
                CupertinoIcons.ellipsis_vertical,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
