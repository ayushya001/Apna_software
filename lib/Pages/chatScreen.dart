import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final Map<String, dynamic> arguments =
    ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
     String name = arguments['name'];
     String image = arguments['image'];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back,
          size: 35),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage(image),
              ),
            ),
            Expanded(
              child: Text(
                "$name",
                style: TextStyle(
                  fontFamily: 'cursive',
                  fontWeight: FontWeight.bold,
                  fontSize: 32
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,bottom: 20),
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              // controller: searchController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Write your message here",
              ),
            ),

        ),
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("This is Messaging screen",
          style: TextStyle(fontFamily: 'cursive',
          fontSize: 24),),
        ),

      ),
    );
  }
}
