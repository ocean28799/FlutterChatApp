import 'package:chat_signalr/pages/loginPage.dart';
import 'package:chat_signalr/utils/appTheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat application',
      theme: ThemeData(
        fontFamily: AppTheme.firstFontName,
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
