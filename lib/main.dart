import 'package:flutter/material.dart';
import 'package:newapp/Pages/ChatPage.dart';
import 'package:newapp/Pages/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0XFFF5F5F3),
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xFFF5F5F3),
            foregroundColor: Color(0xFF113953),
          )),
      routes: {
        "/": (context) => HomePage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}
