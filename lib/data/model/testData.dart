// To parse this JSON data, do
//
//     final testData = testDataFromJson(jsonString);

import 'dart:convert';

List<TestData> testDataFromJson(String str) =>
    List<TestData>.from(json.decode(str).map((x) => TestData.fromJson(x)));

String testDataToJson(List<TestData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

