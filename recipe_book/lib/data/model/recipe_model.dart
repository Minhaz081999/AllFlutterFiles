import 'package:recipe_book/domain/entities/recipe.dart';

// model class extends entity class
class RecipeModel extends Recipe {
  RecipeModel({required super.id, required super.title, required super.image});
  // from JSON to Object
  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      id: json['id'],
      title: json['title'],
      image: json['image'],
    );
  }
  // from Object to JSON/Map
  Map<String, dynamic> toJson() {
    return {'id': id, 'title': title, 'image': image};
  }
}