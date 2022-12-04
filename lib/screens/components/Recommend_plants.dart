import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../constant.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlanCard(
              image: "assets/images/image_1.jpg",
              title: "Samantha",
              country: "Russia",
              price: 440,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => DetailsScreen())));
              }),
          RecommendPlanCard(
              image: "assets/images/image_2.jpg",
              title: "Angelica",
              country: "Russia",
              price: 440,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => DetailsScreen())));
              }),
          RecommendPlanCard(
              image: "assets/images/image_3.jpg",
              title: "Samantha",
              country: "Russia",
              price: 440,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => DetailsScreen())));
              }),
        ],
      ),
    );
  }
}

class RecommendPlanCard extends StatelessWidget {
  const RecommendPlanCard({
    Key? key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding * 2.5),
        width: size.width * 0.4,
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                child: Image.asset(
                  image,
                  // fit: BoxFit.fill,
                )),
            Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: KprimaryColor.withOpacity(0.23)),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country",
                          style: TextStyle(
                            color: KprimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: KprimaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
