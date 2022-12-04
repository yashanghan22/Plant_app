import 'package:flutter/material.dart';

import '../../../constant.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      padding: EdgeInsets.all(kDefaultPadding / 2.5),
      height: size.height * 0.08,
      width: size.width * 0.15,
      decoration: BoxDecoration(
        color: KBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 15),
            blurRadius: 22,
            color: KprimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-10, -10),
            blurRadius: 20,
            color: Colors.white,
          )
        ],
      ),
      child: Icon(
        icon,
        color: KprimaryColor,
        size: size.height * 0.04,
      ),
    );
  }
}
