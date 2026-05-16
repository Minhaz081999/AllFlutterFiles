

import 'dart:convert';

import 'package:recipe_book/core/app_strings.dart';
import 'package:recipe_book/data/model/recipe_model.dart';
import 'package:recipe_book/domain/entities/recipe.dart';
import 'package:http/http.dart' as http;

import '../../domain/entities/recipe_details.dart';
import '../model/recipe_details_model.dart';

class ApiService {
  //------------------ 1) GET Request ----------------------
  Future<List<Recipe>> getRecipesByCategory(String category) async {
    // ১. প্রথমে একটি খালি URL ভেরিয়েবল নিন
    // ২. শর্ত অনুযায়ী URL তৈরি করুন
    final url = (category == 'All')
        ? '${AppStrings.baseUrl}/complexSearch?apiKey=${AppStrings.apiKey}'
        : '${AppStrings.baseUrl}/complexSearch?apiKey=${AppStrings.apiKey}&cuisine=$category';
    // ৩. ডাটা ফেচ করুন
    final response = await http.get(Uri.parse(url));
    // ৪. রেসপন্স চেক করে রেজাল্ট রিটার্ন করুন
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final List results = json['results'];
      return results.map((e) => RecipeModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load recipes');
    }
  }
  //------------------ 2) GET Request ----------------------
  Future<List<Recipe>> searchRecipes(String query) async {
    // ১. প্রথমে একটি খালি URL ভেরিয়েবল নিন
    final url ='${AppStrings.baseUrl}/complexSearch?apiKey=${AppStrings.apiKey}&query=$query' ;
    //  ডাটা ফেচ করুন
    final response = await http.get(Uri.parse(url,));
    //  রেসপন্স চেক করে রেজাল্ট রিটার্ন করুন
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final List results = json['results'];
      return results.map((e) => RecipeModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to search recipes');
    }
  }

  //----------------- 3) recipe detatls ----------------
  Future<RecipeDetails> getRecipeDetails(int id) async {
    final response = await http.get(
      Uri.parse(
        '${AppStrings.baseUrl}/$id/information?apiKey=${AppStrings.apiKey}',
      ),
    );
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return RecipeDetailsModel.fromJson(json);
    } else {
      throw Exception('Failed to load recipe details');
    }
  }
}