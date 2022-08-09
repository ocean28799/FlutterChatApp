import 'package:chat_signalr/utils/appTheme.dart';
import 'package:flutter/cupertino.dart';

Widget chatAppbarWidget(Size size, BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + 6),
    width: size.width,
    height: 100,
    color: AppTheme.gradientColorFrom,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Messenger',
          style: AppTheme.loginTitleStyle.copyWith(fontSize: 25),
        ),
      ],
    ),
  );
}
