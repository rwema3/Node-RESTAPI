import 'package:flutter/material.dart';

Widget appbar(
  BuildContext context, {
  Function onPressed,
  String textString,
  List<Widget> actions,
}) {
  return AppBar(
      backgroundColor: Colors.red,
