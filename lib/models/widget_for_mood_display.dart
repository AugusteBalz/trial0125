import 'package:flutter/material.dart';
import 'package:trial0106/models/mood_select.dart';
import 'package:trial0106/widgets/mood/display_multi_selection.dart';

class WidgetForMoodDisplay extends StatelessWidget {
  final MoodSelect newMood;

  const WidgetForMoodDisplay({Key? key, required this.newMood})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: newMood.color,
      //Colors.deepOrangeAccent,//widget.selectEmotion.color,
      child: Stack(children: [

        Align(
          alignment: Alignment.bottomCenter,
          child: Transform.scale(
            scale: 1.7,
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(200)),
            ),
          ),
        ),


        Column(
          children: [




            Container(
                margin: EdgeInsets.only(top: 200),
                child: Center(child: Text(newMood.moodP))),



            SingleChildScrollView(
              child: Container(

                margin: EdgeInsets.symmetric(vertical: 150, horizontal: 50),
                child: DisplayMultiSelection(items: newMood.moodS),
              ),
            ),

          ],
        ),


      ]),
    );
  }
}
