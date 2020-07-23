import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipeapplication/constants.dart';
import 'package:recipeapplication/size_config.dart';

class ProfileMenuItem extends StatelessWidget {

  final String title, icon;
  final Function press;

  const ProfileMenuItem({Key key, this.title, this.icon, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return InkWell(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultSize * 2, vertical: defaultSize * 3),
        child: Row(
          children: <Widget>[
            SvgPicture.asset(icon),
            SizedBox(width: defaultSize * 2,),
            Text(
              title,
              style: TextStyle(
                  fontSize: defaultSize * 1.6,
                  color: kTextLightColor
              ),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios,
            size: defaultSize * 1.6,
            color: kTextLightColor,)
          ],
        ),
      ),
    );
  }
}
