import 'package:flutter/material.dart';
import 'package:watsapp_clone/widgets/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: const [
                //web profile bar
                // web search bar
                ContactList(),
              ]),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * (0.75),
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/backgroundImage.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
