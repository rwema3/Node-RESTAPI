import 'dart:convert';
import 'package:api3/data/model/testData.dart';
import 'package:http/http.dart' as http;

class ApiService {
  List<TestData> testData;

  static Future<List<TestData>> getTestData() async {
    final res = await http.get(
      Uri.parse("https://api2021.herokuapp.com/"),
    );
    if (res.statusCode == 200) return testDataFromJson(res.body);
    return null;
  }

  static Future<List<TestData>> postTestData({
    String name,
    String email,
  }) async {
