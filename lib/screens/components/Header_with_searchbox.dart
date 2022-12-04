import 'package:flutter/material.dart';

import '../../constant.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 1.5),
      height: size.height * 0.2,
      // color: Colors.black,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 15 + kDefaultPadding,
            ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
                color: KprimaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Hi UiShopy',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                Spacer(),
                // Container(
                //   height: size.height / 11,
                //   width: size.width / 6,
                //   // padding: EdgeInsets.only(left: size.width / 65),
                //   // margin: EdgeInsets.only(left: size.width / 80),
                //   child: Image.asset(
                //     "assets/icons/UI_logo.jpg",
                //   ),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(80),
                //   ),
                // ),
                CircleAvatar(
                  child: Image.asset(
                    "assets/icons/UI_logo.jpg",
                    fit: BoxFit.cover,
                    // cacheHeight: 100,
                    height: 50,
                    width: 50,
                  ),
                  maxRadius: 40,
                  minRadius: 20,
                  backgroundColor: KprimaryColor,
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                height: 54,
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: KprimaryColor.withOpacity(0.23))
                    ]),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(
                            color: KprimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          // suffixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
