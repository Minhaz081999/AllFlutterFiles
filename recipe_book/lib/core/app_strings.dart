class AppStrings {
  static const String appName = 'Recipe App';

  // API Constants
  // apiKey :b380c78e433340b2bbf7f46bf80f064f, f3f155b3043f4535b1295e3a3f7cb27f, 93ed1c51fb2745339440843df604c23a
  static const String apiKey = '915654b0884b4920a8355b46273a23bc';

  // UI Strings
  static const String categories = 'Categories';
  static const String searchRecipes = 'Search Recipes';
  static const String favorites = 'Favorites';
  static const String ingredients = 'Ingredients';
  static const String instructions = 'Instructions';
  static const String noRecipesFound = 'No recipes found.';
  static const String noFavoritesYet = 'No favorite recipes yet.';
  static const String noInstructions =
      'Instructions not available for this recipe.';
  static const String searchHint = 'Search for pasta, chicken...';

  // Newly Added UI Strings
  static const String welcomeBack = 'Welcome Back ';
  static const String letsCook = 'Let\'s Cook!';
  static const String recipeDetails = 'Recipe Details';
  static const String failedToLoadRecipe = 'Failed to load recipe details.';
  static const String typeToSearch = 'Type to search for recipes.';
  static const String defaultRating = '5.0';
  static const String mins = ' mins';
  static const String servings = ' servings';

  // Constants
  static const List<String> recipeCategories = [
    'All',
    'Italian',
    'Chinese',
    'Mexican',
    'Indian',
    'French',
    'Japanese'
  ];

  static const String baseUrl = 'https://api.spoonacular.com/recipes';
  static const String profileImageUrl =
      'https://images.stockcake.com/public/e/7/1/e71ca2d8-cda0-461f-9d70-1e3c0dcb2d3f_large/handsome-man-portrait-stockcake.jpg';
}