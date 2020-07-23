import 'package:flutter/material.dart';
import 'package:recipeapplication/constants.dart';
import 'package:recipeapplication/size_config.dart';

class Info extends StatelessWidget {
  @override

  final String email;
  final String name;
  final String avatar;

  const Info({Key key, this.email, this.name, this.avatar}) : super(key: key);


  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 24,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShape(),
            child: Container(
              height: defaultSize * 15,
              color: kPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: defaultSize * 14,
                  width: defaultSize * 14,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(avatar),
                          fit: BoxFit.cover),
                      border: Border.all(
                          color: Colors.white, width: defaultSize * 0.8)),
                ),
                Text(
                  name,
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: defaultSize * 2.2,
                  ),
                ),
                SizedBox(
                  height: defaultSize / 2,
                ),
                Text(
                  email,
                  style: TextStyle(
                    color: Color(0xFF8492A8),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
