import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_book/core/app_strings.dart';
import 'package:recipe_book/core/extension.dart';
import 'package:recipe_book/presentation/providers/recipe_provider.dart';
import 'package:recipe_book/presentation/widgets/recipe_card.dart';

import '../../core/app_colors.dart';
import '../widgets/category_list_card.dart';
import '../widgets/recipe_app_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   late final provider = context.read<RecipeProvider>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      provider.fetchRecipesByCategory(provider.selectedCategoryName);
      provider.searchRecipes('burger');

    //  provider.selectCategory(provider.selectedCategoryName);
    });
     }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: RecipeAppBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            // --------- Category List -------------
            Text(AppStrings.categories,style: context.textTheme.bodyLarge,),
            CategoryListCard(),
        // ----------- Recipe List ---------------
        Expanded(
          child: Consumer<RecipeProvider>(
            builder: (context, provider, child) {
              if (provider.isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (provider.categoryRecipes.isEmpty) {
                return const Center(child: Text('No recipes found'));
              }
                 return ListView.builder(
                scrollDirection: .horizontal,
                clipBehavior: .none,
                itemCount: provider.categoryRecipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                    recipe: provider.categoryRecipes[index],
                  );
                },
              );
            }
          ),
        ),
            Expanded(
                child:Consumer<RecipeProvider>(
                  builder: (context, provider, child) {
                    if (provider.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (provider.searchResults.isEmpty) {
                      return const Center(child: Text('Not search yet'));
                    }
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: provider.searchResults.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: CachedNetworkImage(
                                      imageUrl: provider.searchResults[index].image,
                                      height: 78,
                                      width: 60,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text(provider.searchResults[index].title),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: AppColors.starColor,
                                            size: 14,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  trailing: Icon(
                                    Icons.bookmark_add,
                                    size: 25,
                                    color: AppColors.primary,
                                  ),
                                ),
                                Divider(color: AppColors.grey200, thickness: 1),
                              ],
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
            )

          ],
        ),
      ),
    );
  }
}
