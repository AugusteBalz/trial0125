import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:trial0106/models/moods.dart';

class BlueprintMood {
  String name;
  PrimaryMoods moodPrimary;
  SecondaryMoods moodSecondary;
  Color color;

  BlueprintMood({
    required this.name,
    required this.moodPrimary,
    required this.moodSecondary,
    required this.color,
  });
}

BlueprintMood defaultBlueprint = BlueprintMood(
    name: "happy",
    moodPrimary: PrimaryMoods.Joy,
    moodSecondary: SecondaryMoods.joy_Happy,
    color: Colors.yellow);
