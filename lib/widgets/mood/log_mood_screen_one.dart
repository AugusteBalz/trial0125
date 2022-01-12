import 'package:flutter/material.dart';
import 'package:trial0106/assets/globals.dart';

import 'package:trial0106/models/blueprint_mood.dart';

import 'package:trial0106/models/mood_entries.dart';
import 'package:trial0106/models/moods.dart';
import 'package:trial0106/models/one_mood.dart';
import 'package:trial0106/widgets/mood/display_multi_selection.dart';
import 'package:trial0106/widgets/mood/moodlog_list.dart';
import 'package:trial0106/widgets/mood/new_mood.dart';

class LogMoodScreenOne extends StatefulWidget {
  const LogMoodScreenOne({Key? key}) : super(key: key);

  @override
  State<LogMoodScreenOne> createState() => _LogMoodScreenOneState();
}

class _LogMoodScreenOneState extends State<LogMoodScreenOne> {

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
          oneEntry.eachMood.add( new OneMood(
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
      appBar: AppBar(
        title: const Text("Pick a mood"),

        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0, top: 15),
              child: GestureDetector(
                onTap: () {

                  _addNewMoodEntry();
                  Navigator.pushNamed(context, "/logmood2");
                },
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 20),
                ),
              )
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            DisplayMultiSelection(),
          ],
        ),
      ),
    );
  }
}
