import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget loginMainImageWidget(Size size) {
  return Container(
    height: size.height * .4,
    child: Lottie.network(
        'https://assets3.lottiefiles.com/packages/lf20_ofa3xwo7.json'),
  );
}
