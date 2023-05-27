import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget UserContainer(String image,String name){
      return GestureDetector(
        onTap:  (){Navigator.pushNamed(context, "/ChatScreen", arguments:
        {
          "name" : name,
          "image" : image,
        }
        );},
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height * 0.090,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(image) ,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Center(
                        child: Text(
                          "$name",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'cursive'
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              Divider(
                color: Colors.black,
                height: 0.1,
                thickness: 1,
              )
            ],
          ),
        ),

      );

    }




    return Scaffold(
      appBar: AppBar(
        title: Text("Friends"),
      ),
      body: SingleChildScrollView(
        physics:BouncingScrollPhysics(),
        child: Column(
          children: [
            UserContainer("assets/images/p1.png", "Ayush kumar", ),
            UserContainer("assets/images/f2.jpg", "Sumita kumari", ),
            UserContainer("assets/images/p2.jpg", "Akash kumar", ),
            UserContainer("assets/images/p3.jpg", "Golu singh", ),
            UserContainer("assets/images/f2.jpg", "Lily olsen", ),
            UserContainer("assets/images/f3.jpg", "Ankita Rai", ),
            UserContainer("assets/images/p3.jpg", "Chris jordan", ),
            UserContainer("assets/images/f1.png", "Smiriti Roy",),
            UserContainer("assets/images/p1.png", "Jason roy",),
            UserContainer("assets/images/p3.jpg", "Smith",),

          ],

        ),
      ),

    );
  }
}
