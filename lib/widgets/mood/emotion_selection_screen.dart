import 'package:flutter/material.dart';
import 'package:trial0106/globals/globals.dart';
import 'package:trial0106/models/blueprint_mood.dart';
import 'package:trial0106/models/mood_entries.dart';
import 'package:trial0106/models/moods.dart';
import 'package:trial0106/models/one_mood.dart';

import 'dart:math';

import 'package:trial0106/models/widget_for_mood_display.dart';

class EmotionSelectionScreen extends StatefulWidget {
  const EmotionSelectionScreen({Key? key}) : super(key: key);

  @override
  _EmotionSelectionScreenState createState() => _EmotionSelectionScreenState();
}

class _EmotionSelectionScreenState extends State<EmotionSelectionScreen> {
  PageController controller = PageController();
  var currentPageValue = 0.0;


  final List<dynamic> displayWidgets = [

    WidgetForMoodDisplay(newMood: sadSelection),

    Container(
      child: WidgetForMoodDisplay(newMood: joySelection),
    ),

    WidgetForMoodDisplay(newMood: surpriseSelection),
    WidgetForMoodDisplay(newMood: fearSelection),
    WidgetForMoodDisplay(newMood: angrySelection),
    WidgetForMoodDisplay(newMood: loveSelection),
    WidgetForMoodDisplay(newMood: otherSelection),


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

  void _addNewMoodEntry() {
    //default blueprint

    BlueprintMood? temporaryMood = defaultBlueprint;

    final MoodEntry newEntry =

    //TODO: fix that ids would be calculated dynamically
    MoodEntry(id: "k1", dateTime: DateTime.now(), eachMood: []);

    oneEntry = newEntry;

    setState(() {


      for (String emotion in selectedDisplayMoods) {


        if (nameToBlueprint.containsKey(emotion)) {

          temporaryMood = nameToBlueprint[emotion];
          oneEntry.eachMood.add(
            OneMood(
              moodPrimary: temporaryMood!.moodPrimary,
              moodSecondary: temporaryMood!.moodSecondary,
              strength: 0,
              color: temporaryMood!.color,
            ),
          );
        }

        else {

          //add one new mood
          oneEntry.eachMood.add( OneMood(
              moodPrimary: PrimaryMoods.Joy,
              moodSecondary: SecondaryMoods.joy_Proud,
              strength: 10,
              color: Colors.yellow));
        }


      }

    });
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title:
            Text("How are you feeling?", style: Theme.of(context).textTheme.headline2),
        backgroundColor: Colors.transparent,

        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 15),
              child: GestureDetector(
                onTap: () {


                  _addNewMoodEntry();

                  if (oneEntry.eachMood.isEmpty){
                    //display a pop up saying "please add at least one emotion!



                    showDialog(
                      context: context,
                      builder: (BuildContext context) => _buildPopupDialog(context),
                    );
                  }

                  else {

                    //if a person presses "Next", he goes to the next screen to rate the strength of his/her emotions
                    Navigator.pushNamed(context, "/logmood2");

                    //delete all previous
                    moodSelection.clear();

                  }



                },
                child: Text(
                  "Next",
                  style: Theme.of(context).textTheme.headline3,
                ),
              )
          ),
        ],
      ),


      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: controller,
       // itemCount: displayWidgets.length,
        itemBuilder: (context, index) {


          return displayWidgets[index % (displayWidgets.length)];
          /*



Transform(
              alignment: Alignment.bottomCenter,
              transform: new Matrix4.identity()
                ..rotateZ(15 * 3.1415927 / 180),
              child: (displayWidgets[index]));


           //anothr
           Transform(

            alignment: Alignment.bottomCenter,
              transform: Matrix4.identity()..rotateX(currentPage! - index),
              child: (displayWidgets[index]));
            */
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





Widget _buildPopupDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Hi there!'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text("It seems like you haven't selected any emotions... Please select at least one:)"),
      ],
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },

        child: const Text('Okay!'),
      ),
    ],
  );
}
