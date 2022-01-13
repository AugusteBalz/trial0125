import 'package:flutter/material.dart';

import 'dart:math';

class EmotionSelectionScreen extends StatefulWidget {
  const EmotionSelectionScreen({Key? key}) : super(key: key);

  @override
  _EmotionSelectionScreenState createState() => _EmotionSelectionScreenState();
}

class _EmotionSelectionScreenState extends State<EmotionSelectionScreen> {
  PageController controller = PageController();
  var currentPageValue = 0.0;

  final colors = ["Red", "Green", "Yellow", "Black", "Pink"];

  final displayWidgets = [
    Container(
      color: Colors.red,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Transform.scale(
          scale: 1.7,
          child: Container(
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(200)),
          ),
        ),
      ),
    ),
    Container(
      color: Colors.amber,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Transform.scale(
          scale: 1.7,
          child: Container(
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(200)),
          ),
        ),
      ),
    ),
    Container(
      color: Colors.green,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Transform.scale(
          scale: 1.7,
          child: Container(
            height: 400,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(200)),
          ),
        ),
      ),
    ),

  ];

  double? currentPage = 0;


  @override
  void initState() {

    //add
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:
            Text("Pick a mood", style: Theme.of(context).textTheme.headline2),
        backgroundColor: Colors.transparent,
      ),
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller,
        itemCount: displayWidgets.length,
        itemBuilder: (context, index) {
          return Transform(
            alignment: Alignment.bottomCenter,
              transform: Matrix4.identity()..rotateX(currentPage! - index),
              child: (displayWidgets[index]));
        },
      ),

      /*
      Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            controller: controller,
            children: [
              Container(
                color: Colors.red,
              ),
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.green,
              ),
            ],
          ),
          Container(
            color: Colors.pink.withOpacity(.2),
            child: Text("OverLap Container"),
          ),
          Align(alignment: Alignment(0, .1), child: Text("Another OverLapText")),

          ///THis will controll the PageView
          GestureDetector(
            onTap: () {},
            onPanUpdate: (details) {
              // Swiping in right direction.
              if (details.delta.dx > 0) {
                controller.nextPage(
                    duration: Duration(milliseconds: 200), curve: Curves.easeIn);
              }

              // Swiping in left direction.
              if (details.delta.dx < 0) {
                controller.previousPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.easeInOut);
              }
            },
          )
        ],
      )
      */
    );
  }
}
