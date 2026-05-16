import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:recipe_book/core/app_strings.dart';
import 'package:recipe_book/presentation/providers/recipe_provider.dart';

import '../../core/app_colors.dart';

class CategoryListCard extends StatelessWidget {
   CategoryListCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<RecipeProvider>(

      builder: (context, provider,_) {
        return SizedBox(
          height: 40,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              clipBehavior:.none,
              itemCount: provider.categories.length, // itemCount: লিস্টে মোট কয়টি আইটেম থাকবে।

              itemBuilder: (context, index) {
                // variable
              final category = provider.categories[index];
              final isSelected = provider.selectedCategoryName == category;

               return GestureDetector(
                 onTap: (){
                      provider.selectCategory(category);
                 },
                 child: Container(
                   margin: .only(left: 3),
                   padding: .symmetric(horizontal: 16, vertical: 8),
                   decoration: BoxDecoration(
                     color: isSelected ? AppColors.primary : AppColors.surface,
                     borderRadius: BorderRadius.circular(20),
                     border: Border.all(
                       color: isSelected ? AppColors.primary : AppColors.grey,
                     ),
                   ),

                   child: Text(category,  style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.w500,
                     color: isSelected ? AppColors.white70 : AppColors.grey,
                   ),),
                 ),
               );
              } , // itemBuilder: প্রতিটি আইটেম দেখতে কেমন হবে।

              separatorBuilder: (context, index) =>  SizedBox(width: 4) // separatorBuilder: প্রতিটি আইটেমের মাঝখানে কী থাকবে (যেমন: Divider বা SizedBox)।

          ),
        );
      }
    );
  }
}
