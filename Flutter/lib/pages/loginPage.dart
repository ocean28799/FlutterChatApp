import 'package:chat_signalr/pages/chatPage.dart';
import 'package:chat_signalr/utils/appTheme.dart';
import 'package:chat_signalr/widgets/loginButtonWidget.dart';
import 'package:chat_signalr/widgets/loginHeaderWidge.dart';
import 'package:chat_signalr/widgets/loginMainImageWidget.dart';
import 'package:chat_signalr/widgets/loginSubtitleWidget.dart';
import 'package:chat_signalr/widgets/loginTextInputWidget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameTextController = TextEditingController();

  onTapButton() {
    if (usernameTextController.text.isEmpty) {
      const snackBar = SnackBar(
        content: Text(
          'Please enter your name',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.redAccent,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      Navigator.pushReplacement<void, void>(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) =>
              ChatPage(usernameTextController.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: AppTheme.loginContainerBoxdecoration,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.all(0),
            height: size.height,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                loginHeaderWidget(),
                loginSubtitleWidget(),
                loginMainImageWidget(size),
                loginTextInputWidget(size, usernameTextController),
                loginButtonWidget(size, onTapButton),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
