import 'package:flutter/material.dart';
import 'package:trial0106/globals/globals.dart';

import 'package:trial0106/models/blueprint_mood.dart';

import 'package:trial0106/models/mood_entries.dart';
import 'package:trial0106/models/moods.dart';
import 'package:trial0106/models/one_mood.dart';
import 'package:trial0106/widgets/mood/display_multi_selection.dart';
import 'package:trial0106/widgets/mood/emotion_selection_screen.dart';
import 'package:trial0106/widgets/mood/moodlog_list.dart';
import 'package:trial0106/widgets/mood/new_mood.dart';

//TODO: add a pop-up if a person logs no emotions

//TODO: do a "PageView" for scrolling through different types of emotions

class LogMoodScreenOne extends StatefulWidget {
  const LogMoodScreenOne({Key? key}) : super(key: key);

  @override
  State<LogMoodScreenOne> createState() => _LogMoodScreenOneState();
}

class _LogMoodScreenOneState extends State<LogMoodScreenOne> {
  

  @override
  Widget build(BuildContext context) {
    return const EmotionSelectionScreen();
  }
}
