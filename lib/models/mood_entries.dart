import 'package:flutter/cupertino.dart';
import 'package:trial0106/models/one_mood.dart';


class MoodEntry {

  String id;
  DateTime dateTime;
  List<OneMood> eachMood;


  MoodEntry({

    required this.id,
    required this.dateTime,
    required this.eachMood,

  });
}