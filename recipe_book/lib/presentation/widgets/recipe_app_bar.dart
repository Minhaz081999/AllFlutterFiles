import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipe_book/core/app_strings.dart';
import 'package:recipe_book/presentation/screens/search_screen.dart';


class RecipeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const RecipeAppBar({
    super.key,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(AppStrings.welcomeBack),
          Text(AppStrings.appName),
        ],
      ),
      centerTitle: false,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: .circular(100),
          child: CachedNetworkImage(
              imageUrl: AppStrings.profileImageUrl
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=> const SearchScreen()
              )
              );
            },
            icon: Icon(Icons.search) 
        )
      ],
    );
  }


}