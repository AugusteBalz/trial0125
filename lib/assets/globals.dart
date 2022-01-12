library mood_as_classes.globals;

import 'package:flutter/material.dart';
import 'package:trial0106/assets/colors_of_mood.dart';
import 'package:trial0106/models/blueprint_mood.dart';
import 'package:trial0106/models/mood_entries.dart';
import 'package:trial0106/models/moods.dart';
import 'package:trial0106/models/one_mood.dart';
import 'package:trial0106/assets/constants_of_mood.dart';



List<String> displayMoods = [
  "jelous",
  "hurt",
  "furious",
  "mad",
  "triggered",

  //-------

  "scared",
  "insecure",
  "helpless",
  "anxious",

  //-------

  "romantic",
  "sentimental",
  "appreciative",

  //-------



  //JOY

  "proud",
  "cheerful",
  "peaceful",
  "pleased",


  //SURPRISE
  "amazed",
  "confused",
  "stunned",
  "shocked",


  //SAD

  "lonely",
  "disappointed",
  "miserable",
  "guilty",
  "depressed",


  //OTHER

  "empty",
  "shameful",




];

List<String> selectedDisplayMoods = [];

ConstantsOfMood wholeList = ConstantsOfMood();

Map<String, BlueprintMood> nameToBlueprint = {
  //ANGRY
  "jelous": wholeList.JELOUS,
  "hurt": wholeList.HURT,
  "furious": wholeList.FURIOUS,
  "mad": wholeList.MAD,
  "triggered": wholeList.TRIGGERED,

  //FEAR

  "scared": wholeList.SCARED,
  "insecure": wholeList.INSECURE,
  "helpless": wholeList.HELPLESS,
  "anxious": wholeList.ANXIOUS,

  //LOVE

  "romantic": wholeList.ROMANTIC,
  "sentimental": wholeList.SENTIMENTAL,
  "appreciative": wholeList.APPRECIATIVE,

  //JOY

  "proud" : wholeList.PROUD,
  "cheerful" : wholeList.CHEERFUL,
  "peaceful" : wholeList.PEACEFUL,
  "pleased" : wholeList.PLEASED,


  //SURPRISE
  "amazed": wholeList.AMAZED,
  "confused": wholeList.CONFUSED,
  "stunned": wholeList.STUNNED,
  "shocked": wholeList.SHOCKED,


  //SAD

  "lonely": wholeList.LONELY,
  "disappointed": wholeList.DISAPPOINTED,
  "miserable": wholeList.MISERABLE,
  "guilty": wholeList.GUILTY,
  "depressed": wholeList.DEPRESSED,


  //OTHER

  "empty": wholeList.EMPTY,
  "shameful": wholeList.SHAMEFUL,


};

Map<PrimaryMoods, Color>  primaryColors= {

  PrimaryMoods.Joy : joyMoodColor,
  PrimaryMoods.Angry : angryMoodColor,
  PrimaryMoods.Fearful : fearMoodColor,
  PrimaryMoods.Love : loveMoodColor,
  PrimaryMoods.Sad : sadMoodColor,
  PrimaryMoods.Surprise : surpriseMoodColor,
  PrimaryMoods.Other : otherMoodColor,


};

final List<MoodEntry> moodEntryList = [

];


final List<MoodEntry> moodEntryList2 = [
  MoodEntry(
    id: 'e1',
    dateTime: DateTime.now(),
    eachMood: [
      OneMood(
        moodPrimary: PrimaryMoods.Angry,
        moodSecondary: SecondaryMoods.angry_Hurt,
        strength: 6,
        color: Colors.redAccent,
      ),
      OneMood(
        moodPrimary: PrimaryMoods.Angry,
        moodSecondary: SecondaryMoods.angry_Hurt,
        strength: 4,
        color: Colors.yellow,
      ),
    ],
  ),
  MoodEntry(
    id: 'e2',
    dateTime: DateTime.now(),
    eachMood: [
      OneMood(
        moodPrimary: PrimaryMoods.Angry,
        moodSecondary: SecondaryMoods.angry_Hurt,
        strength: 6,
        color: Colors.redAccent,
      ),
      OneMood(
        moodPrimary: PrimaryMoods.Angry,
        moodSecondary: SecondaryMoods.angry_Hurt,
        strength: 4,
        color: Colors.yellow,
      ),
    ],
  ),
];

OneMood oneSubEmotion = OneMood(moodPrimary: PrimaryMoods.Love, moodSecondary: SecondaryMoods.joy_Proud, strength: 0, color: Colors.grey);

MoodEntry oneEntry = MoodEntry(id: "a1", dateTime: DateTime.now(), eachMood: []);
