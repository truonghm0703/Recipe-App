import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipeapplication/Models/RecipeBundle.dart';
import 'package:recipeapplication/Screens/home/components/recipe_budle_card.dart';
import 'package:recipeapplication/constants.dart';
import 'package:recipeapplication/size_config.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Categories(),
        Expanded(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
            child: GridView.builder(
              itemCount: recipeBundles.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 20,
                childAspectRatio: 1.65,
              ),
              itemBuilder: (context, index) => RecipeCard(
                recipeBundle: recipeBundles[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
