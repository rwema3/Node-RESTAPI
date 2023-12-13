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
        actions: [
          IconButton(
            icon: Icon(Icons.more),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("We'll update more things"),
                ),
              );
            },
          ),
        ],
      ),
      body: StreamBuilder(
        stream: Stream.periodic(Duration(seconds: 2)).asyncMap(
          (i) => ApiService.getTestData(),
        ),
        builder: (_, snapshot) {
          List<TestData> user = snapshot.data;
          if (!snapshot.hasData) return LinearProgressIndicator();
          return gettingAllDataHere(user, context);
        },
      ),
    );
  }

  Widget gettingAllDataHere(List<TestData> user, BuildContext context) {
    return ListView.builder(
      itemCount: user.length,
      itemBuilder: (_, index) {
        var one = user[index].email;
        final show = one.substring(0, 1);
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.indigo,
            child: Text(
              show.toUpperCase(),
              style: textStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
