import 'package:flutter/material.dart';
import 'package:plant_flower_app/components/featured_plants.dart';
import 'package:plant_flower_app/components/header_with_searchbox.dart';
import 'package:plant_flower_app/components/recomends_plants.dart';
import 'package:plant_flower_app/components/title_with_more_bbtn.dart';
import 'package:plant_flower_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will provie ass total height and width of our screen_Это обеспечит общую высоту и ширину вашего экрана
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device_он включает прокрутку на маленьком устройстве
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recomended",
            press: () {},
          ),
          // it will cover 40% of our total width_он покроет 40% нашей общей ширины
          RecomendsPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlantCard(
            image: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}


