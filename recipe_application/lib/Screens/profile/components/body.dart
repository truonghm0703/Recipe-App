import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipeapplication/Screens/profile/components/info.dart';
import 'package:recipeapplication/Screens/profile/components/profile_menu_item.dart';
import 'package:recipeapplication/constants.dart';
import 'package:recipeapplication/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Column(
      children: <Widget>[
        Info(
          name: "Hoang Minh Truong",
          email: "minhtruong0703@gmail.com",
          avatar: "assets/images/pic.png",
        ),
        SizedBox(height: defaultSize * 2,),
        ProfileMenuItem(
          icon: "assets/icons/bookmark_fill.svg",
          title: "Recipes",
          press: () {},
        ),
        ProfileMenuItem(
          icon: "assets/icons/chef_color.svg",
          title: "Super Plans",
          press: () {},
        ),
        ProfileMenuItem(
          icon: "assets/icons/language.svg",
          title: "Change Language",
          press: () {},
        ),
        ProfileMenuItem(
          icon: "assets/icons/info.svg",
          title: "Help",
          press: () {},
        )
      ],
    );
  }
}
