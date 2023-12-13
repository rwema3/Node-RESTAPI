import 'package:api3/data/model/testData.dart';
import 'package:api3/data/services/api_service.dart';
import 'package:api3/screen/addData.dart';
import 'package:api3/utilities/textStyle.dart';
import 'package:api3/widget/appbar.dart';
import 'package:flutter/material.dart';

class Hommy extends StatefulWidget {
  @override
  _HommyState createState() => _HommyState();
}

class _HommyState extends State<Hommy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingactionbutton(context),
      appBar: appbar(
        context,
        textString: "Home Page",

