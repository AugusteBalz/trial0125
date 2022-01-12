import 'package:flutter/material.dart';
import 'package:trial0106/widgets/button_to_log_mood.dart';
import 'package:trial0106/widgets/history.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:trial0106/widgets/mood/moodlog_list.dart';



class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(15),
          width: 500,
          child: Stack(children: [
            CarouselSlider(
              carouselController: carouselController, // Give the controller
              options: CarouselOptions(),
              items: widgetlist.map((featuredImage) {
                return Card(
                  child: featuredImage,
                );
              }).toList(),
            ),

          ]),
        ),
      ],
    );
  }
}
