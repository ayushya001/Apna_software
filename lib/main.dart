import 'package:flutter/material.dart';

import 'Pages/Splash.dart';
import 'Pages/chatScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => SplashScreen(),
        "/ChatScreen": (context) => ChatScreen(),
      },

    );
  }
}
