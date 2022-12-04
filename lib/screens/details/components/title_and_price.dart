import 'package:flutter/material.dart';

import '../../../constant.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key? key,
    required this.title,
    required this.country,
    required this.price,
  }) : super(key: key);

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
              text: "$title\n",
              style: Theme.of(context)
                  .textTheme
                  .headline4
                  ?.copyWith(color: KTextColor, fontWeight: FontWeight.bold),
            ),
            TextSpan(
                text: "$country",
                style: TextStyle(
                  fontSize: 20,
                  color: KprimaryColor,
                  fontWeight: FontWeight.w300,
                ))
          ])),
          Spacer(),
          Text(
            "\$$price",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: KprimaryColor),
          ),
          // Spacer()
        ],
      ),
    );
  }
}
