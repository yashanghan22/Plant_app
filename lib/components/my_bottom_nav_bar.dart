import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:plant_app/constant.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, -10),
          blurRadius: 35,
          color: KprimaryColor.withOpacity(0.35),
        ),
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/flower-bloom-icon.svg"),
            onPressed: () {},
            iconSize: 10,
            color: KprimaryColor,
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
            iconSize: 35,
            // color: KprimaryColor,
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {},
            iconSize: 35,
            color: KprimaryColor,
          ),
        ],
      ),
    );
  }
}
