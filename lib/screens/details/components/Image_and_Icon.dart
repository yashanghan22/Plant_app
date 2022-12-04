import 'package:flutter/material.dart';

import '../../../constant.dart';
import 'Icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.7,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: (() {
                          Navigator.pop(context);
                        }),
                        icon: Icon(Icons.arrow_back_rounded),
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      ),
                    ),
                    Spacer(),
                    IconCard(icon: Icons.sunny),
                    IconCard(icon: Icons.hot_tub),
                    IconCard(icon: Icons.water_drop_outlined),
                    IconCard(icon: Icons.wind_power),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: KprimaryColor.withOpacity(0.29),
                    )
                  ],
                  image: DecorationImage(
                      alignment: Alignment.centerLeft,
                      fit: BoxFit.fill,
                      // scale: 5,
                      image: AssetImage("assets/images/image_1.jpg"))),
            ),
          ],
        ),
      ),
    );
  }
}
