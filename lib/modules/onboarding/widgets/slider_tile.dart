import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SliderTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const SliderTile({Key key, this.imagePath, this.title, this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SvgPicture.asset(
          imagePath,
          height: 200,
        ),
        SizedBox(
          height: 20,
        ),
        Text(title),
        SizedBox(
          height: 12,
        ),
        Text(description),
      ],
    ));
  }
}
