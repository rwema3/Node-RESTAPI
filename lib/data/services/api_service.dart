import 'dart:convert';
import 'package:api3/data/model/testData.dart';
import 'package:http/http.dart' as http;

class ApiService {
  List<TestData> testData;

  static Future<List<TestData>> getTestData() async {
    final res = await http.get(
      Uri.parse("https://api2021.herokuapp.com/"),
