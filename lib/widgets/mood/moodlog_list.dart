import 'package:flutter/material.dart';
import 'package:trial0106/globals/globals.dart';
import 'package:trial0106/models/mood_entries.dart';
import 'package:intl/intl.dart';

class MoodLogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          //map the list of transactions to the widgets
          //"for each moodlog "md" draw a widget"


          children: moodEntryList.map((entry) {
            //take off the time from the map key

            DateTime entryTime = entry.dateTime;

            return Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 15,
                  ),
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 15,
                          ),
                          child: Text(
                            DateFormat("MMM d, HH:mm").format(entryTime),
                            //writes out the date
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                        Column(
                          //map the list of moods to the widgets
                          //"for each moodlog "md" draw a widget"

                          children: entry.eachMood.map((md) {
                            //previous output:
                            // "SecondaryMood.angry_jelous"
                            //this leaves it just with "jelous"

                            String temp = md.moodSecondary.toString();
                            String newMoodS = temp.substring(
                                (temp.indexOf("_") + 1), temp.length);

                            //same goes with primary moods

                            String temp2 = md.moodPrimary.toString();
                            String newMoodP = temp2.substring(
                                (temp2.indexOf(".") + 1), temp2.length);


                            int subStrenght = md.strength;
                            // String somtheing = "${md.strength}"; // string interpolation?

                            //color

                            Color myColor = md.color;

                            //displaying widgets

                            return Container(
                                child: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 15,
                              ),
                              padding: EdgeInsets.symmetric(
                                  vertical: 1, horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //primary mood
                                        Container(
                                          child: Text(newMoodP,
                                              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: myColor,
                                              ),),
                                        ),

                                        //the date
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //secondary mood
                                        Container(
                                          child: Text(
                                            newMoodS,
                                            style: Theme.of(context).textTheme.bodyText2,
                                          ),
                                        ),

                                        //its strenght
                                        Container(
                                          child: Text(
                                            subStrenght.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25,
                                                color: myColor),
                                          ),
                                        ),
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
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
