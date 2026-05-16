import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_book/presentation/providers/recipe_provider.dart';

import '../../core/app_colors.dart';
import '../../domain/entities/recipe.dart';
import '../screens/recipe_details_screen.dart';


class RecipeCard extends StatelessWidget {
  const RecipeCard({super.key, required this.recipe});
  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => RecipeDetailsScreen(recipeId: recipe.id),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 180,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: .circular(20),
                    child: CachedNetworkImage(imageUrl: recipe.image.toString(),
                      height: 231,
                      width: 312,
                      fit: BoxFit.cover,
                      // placeholder: (context, url) => CircularProgressIndicator(),
                      // errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    top: 12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.customOverlay,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisSize: .min,
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 14),
                          SizedBox(width: 4),
                          Text('4.5', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 170,
                child: Text(
                  recipe.title,
                  style: TextStyle(fontWeight: .w800, fontSize: 16),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: .center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
