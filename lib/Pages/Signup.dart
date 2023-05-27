import 'package:flutter/material.dart';

import 'HomePage.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    Widget buildSignInContainer(String imageAsset, String text, VoidCallback onPressed) {
      return GestureDetector(
        onTap: onPressed,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(imageAsset),
                  ),
                ),
                VerticalDivider(
                  color: Colors.black,
                  thickness: 1,
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }



    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Apna-Software'
            ,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily:  'cursive',
                color: Colors.white,
                fontSize: 44
            ),),
          SizedBox(height: 20),
          Text('Sign In options:-'
            ,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily:  'cursive',
                color: Colors.white,
                fontSize: 24
            ),),
          SizedBox(height: 40),

          buildSignInContainer(
            'assets/images/chrom.jpg',
            'Sign in using Google',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );

            },
          ),
          SizedBox(height: 20),
          buildSignInContainer(
            'assets/images/fb.png',
            'Sign in using Facebook',
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
            },
          ),
          SizedBox(height: 40),
          Text('Created By Ayush kumar'
            ,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily:  'cursive',
                color: Colors.white,
                fontSize: 14
            ),),
        ],
      ),
    );
  }
}
