import 'package:flutter/material.dart';
import 'package:recipeapplication/Screens/profile/components/body.dart';
import 'package:recipeapplication/components/my_bottom_nav_bar.dart';
import 'package:recipeapplication/constants.dart';
import 'package:recipeapplication/size_config.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text(
          "Profile",
        ),
        actions: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text(
              "Edit",
              style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.defaultSize * 1.6,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyBottomBar(),
      body: Body(),
    );
  }
}
