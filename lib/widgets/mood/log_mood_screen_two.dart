import 'package:flutter/material.dart';
import 'package:trial0106/globals/globals.dart';

import 'package:trial0106/widgets/mood/display_one_slider.dart';

class LogMoodScreenTwo extends StatefulWidget {
  const LogMoodScreenTwo({Key? key}) : super(key: key);

  @override
  State<LogMoodScreenTwo> createState() => _LogMoodScreenTwoState();
}

class _LogMoodScreenTwoState extends State<LogMoodScreenTwo> {
  void _addNewMoodEntryFinal() {
    setState(() {
      //puts it reversed
      moodEntryList.insert(0, oneEntry);
    });
  }

  // double currentSliderValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("How strong are these emotions?",
            style: Theme.of(context).textTheme.headline2),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0, top: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);

                  _addNewMoodEntryFinal();
                },
                child: Text(
                  "Done",
                  style: Theme.of(context).textTheme.headline3,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 40),
          child: Center(
            child: Column(
              children: oneEntry.eachMood.map((md) {
                //previous output:
                // "SecondaryMood.angry_jealous"
                //this leaves it just with "jealous"

                String temp = md.moodSecondary.toString();
                String newMoodS =
                    temp.substring((temp.indexOf("_") + 1), temp.length);

                //same goes with primary moods

                String temp2 = md.moodPrimary.toString();
                String newMoodP =
                    temp2.substring((temp2.indexOf(".") + 1), temp2.length);

                //color

                Color myColor = md.color;

                //displaying widgets

                return Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //primary mood
                            Text(
                              newMoodP,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: myColor,
                                  ),
                            ),

                            //the date
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //secondary mood
                            Text(
                              newMoodS,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2,
                            ),

                            DisplayOneSlider(md: md),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
