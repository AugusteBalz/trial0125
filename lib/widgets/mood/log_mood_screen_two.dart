import 'package:flutter/material.dart';
import 'package:trial0106/assets/globals.dart';

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
        title: const Text("Second mood screen"),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0, top: 15),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pop(context);

                  _addNewMoodEntryFinal();
                },
                child: Text(
                  "Done",
                  style: TextStyle(fontSize: 20),
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.only(top: 40),
          child: Center(

            child: Column(

              children: oneEntry.eachMood.map((md) {
                //previous output:
                // "SecondaryMood.angry_jelous"
                //this leaves it just with "jelous"

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
                    child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //primary mood
                            Container(
                              child: Text(newMoodP,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                    color: myColor,
                                  )),
                            ),

                            //the date
                          ],
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //secondary mood
                            Container(
                              child: Text(
                                newMoodS,
                                // style: GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: )

                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),


                            DisplayOneSlider(md: md),
                          ],
                        ),
                      ),
                    ],
                  ),
                )

                    //Text(newMood),

                    );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
