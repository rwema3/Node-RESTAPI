import 'package:api3/data/model/testData.dart';
import 'package:api3/data/services/api_service.dart';
import 'package:api3/utilities/textStyle.dart';
import 'package:api3/widget/appbar.dart';
import 'package:api3/widget/elevatedButton.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  final TestData testData;
  AddData({this.testData});
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController _name;
  TextEditingController _email;

  @override
  void initState() {
    var text = widget.testData;
 
