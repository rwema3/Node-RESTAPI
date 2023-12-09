// To parse this JSON data, do
//
//     final testData = testDataFromJson(jsonString);

import 'dart:convert';

List<TestData> testDataFromJson(String str) =>
    List<TestData>.from(json.decode(str).map((x) => TestData.fromJson(x)));

String testDataToJson(List<TestData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TestData {
  TestData({
    this.id,
    this.name,
    this.email,
    this.age,
    this.laptop,
    this.gender,
    this.v,
    this.testDatumId,
  });

  String id;
  String name;
  String email;
  String age;
  String laptop;
  String gender;

}
