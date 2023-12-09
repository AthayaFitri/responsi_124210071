// ignore_for_file: avoid_print, constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../utils/category.dart';
import '../utils/meal.dart';
import '../utils/meal_detail.dart';

class ApiSource {
  static const _Category =
      'https://www.themealdb.com/api/json/v1/1/categories.php';
  static const _Meal = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=';
  static const _Detail =
      'https://www.themealdb.com/api/json/v1/1/lookup.php?i=';

  Future<List<CategoryNew>> getCategory() async {
    final response = await http.get(Uri.parse(_Category));

    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['categories'] as List;
      print(decodeData);
      return decodeData.map((data) => CategoryNew.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load datas :(');
    }
  }

  Future<List<MealNew>> getMealsByCategory(String category) async {
    final response = await http.get(Uri.parse('$_Meal$category'));

    if (response.statusCode == 200) {
      final decodeData = json.decode(response.body)['meals'] as List;
      print(decodeData);
      return decodeData.map((data) => MealNew.fromJson(data)).toList();
    } else {
      throw Exception('Failed to load meals by category :(');
    }
  }

  Future<DetailNew> getMealDetail(String mealId) async {
    final response = await http.get(Uri.parse('$_Detail$mealId'));

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['meals'][0];
      print(decodedData);
      return DetailNew.fromJson(decodedData);
    } else {
      throw Exception('Failed to load meal details :(');
    }
  }
}
