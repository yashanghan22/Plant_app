import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constant.dart';
import 'package:plant_app/screens/components/body.dart';

import '../../components/my_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      backgroundColor: KprimaryColor,
      elevation: 0,
      leading: IconButton(
        // icon: SvgPicture.asset('assets/icons/menu.svg'),
        icon: Icon(Icons.menu, size: 30),
        onPressed: (() {}),
      ),
    );
  }
}
