import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../models/category_model.dart';

class CategoryProvider with ChangeNotifier {
  Future<List<CategoryModel>> getCategory() async {
    try {
      var response = await http
          .get(Uri.parse('https://bwa-jobs.herokuapp.com/categories'));

      if (response.statusCode == 200) {
        List<CategoryModel> categories = [];
        List parsedJson = jsonDecode(response.body);

        parsedJson.forEach((category) {
          categories.add(CategoryModel.fromJson(category));
        });

        return categories;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
