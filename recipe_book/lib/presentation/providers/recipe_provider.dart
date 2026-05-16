import 'package:flutter/cupertino.dart';
import 'package:recipe_book/core/app_strings.dart';

import '../../data/service/api_service.dart';
import '../../data/service/local_storage_service.dart';
import '../../domain/entities/recipe.dart';
import '../../domain/entities/recipe_details.dart';

class RecipeProvider extends ChangeNotifier{
  final ApiService _apiService = ApiService();

  // -------- isLoading part --------------
  bool _isLoading = false; // লোডিং বন্ধ
  bool get isLoading => _isLoading;

  //-------------- For Category UI -------------------
  List<Recipe> _categororyRecipes = [];
  List<Recipe> get categoryRecipes => _categororyRecipes;
  // নির্দিষ্ট ক্যাটাগরির ডেটা সার্ভার থেকে নিয়ে আসার মূল ফাংশন
  Future<void> fetchRecipesByCategory(String category) async {
    _isLoading = true; // লোডিং শুরু: ইউজারকে একটি লোডিং স্পিনার দেখানো হয়েছে
    notifyListeners(); // UI-কে জানানো হচ্ছে যে স্টেট পরিবর্তন হয়েছে
    try {
      // API সার্ভিস কল করে সার্ভার থেকে ডেটা সংগ্রহ করা এবং লিস্টে জমা রাখা
      _categororyRecipes = await _apiService.getRecipesByCategory(category);
    } catch (e) {
      print('Error fetching recipes: $e');
    } finally {
      _isLoading = false; // লোডিং শেষ: কাজ সফল হোক বা না হোক, লোডিং বন্ধ করা হবে
      notifyListeners(); // UI-কে জানানো হচ্ছে যে স্টেট পরিবর্তন হয়েছে
    }

  }

  //-------------- For Search Bar UI -------------------
  List<Recipe> _searchResults = [];
  List<Recipe> get searchResults => _searchResults;
  // ইউজারের দেওয়া শব্দ (query) দিয়ে রেসিপি খোঁজার মূল ফাংশন
  Future<void> searchRecipes(String query) async {

    _isLoading = true; // লোডিং শুরু: স্ক্রিনে প্রগ্রেস বার দেখানোর জন্য এটি সত্য (true) করা হলো
    notifyListeners(); // UI-কে আপডেট করার সংকেত পাঠানো
    try {
      // API সার্ভিসকে কল করে সার্চের রেজাল্ট নিয়ে আসা এবং লিস্টে সংরক্ষণ করা
      _searchResults = await _apiService.searchRecipes(query);
    } catch (e) {
      print('Error searching recipes: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
//----------- Category List ----------------
  RecipeProvider() {
    selectedCategoryName = categories[0]; // = All
  }
  final categories = AppStrings.recipeCategories;
 var selectedCategoryName ='';

  // for Category Selection
  void selectCategory(String name) {
    selectedCategoryName = name;
    // সিলেক্ট করার সাথে সাথেই ডেটা ফেচ করা শুরু করবে
    fetchRecipesByCategory(name);
    notifyListeners();
  }

  void clearSearchResults() {
    _searchResults = [];
    notifyListeners();
  }

  // ------------ RECIPE details -----------------
  RecipeDetails? _currentRecipeDetails;
  RecipeDetails? get currentRecipeDetails => _currentRecipeDetails;
  bool _isLoadingDetails = false;
  bool get isLoadingDetails => _isLoadingDetails;
  Future<void> fetchRecipeDetails(int id) async {
    _isLoadingDetails = true;
    _currentRecipeDetails = null;
    notifyListeners();
    try {
      _currentRecipeDetails = await _apiService.getRecipeDetails(id);
    } catch (e) {
      _currentRecipeDetails = null;
    }
    _isLoadingDetails = false;
    notifyListeners();
  }
// -------------------- Button ----------------------
  List<Recipe> _favorites = [];
  List<Recipe> get favorites => _favorites;
  final LocalStorageService _localStorageService = LocalStorageService();

  Future<void> loadFavorites() async {
    _favorites = await _localStorageService.getFavorites();
    notifyListeners();
  }

  Future<void> toggleFavorite(Recipe recipe) async {
    await _localStorageService.toggleFavorite(recipe);
    await loadFavorites();
  }

  bool isFavorite(int id) {
    return _favorites.any((r) => r.id == id);
  }

// ...........................................................................
}