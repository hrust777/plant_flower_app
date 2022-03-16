import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_flower_app/components/body.dart';
import 'package:plant_flower_app/components/my_bottom_nav_bar.dart';
import 'package:plant_flower_app/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
    );
  }
}


