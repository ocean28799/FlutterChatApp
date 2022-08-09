import 'package:chat_signalr/utils/appTheme.dart';
import 'package:flutter/cupertino.dart';

Widget loginHeaderWidget() {
  return Padding(
    padding: const EdgeInsets.only(top: 64),
    child: Column(
      children: [
        Text(
          'Messenger',
          style: AppTheme.loginTitleStyle,
        )
      ],
    ),
  );
}
