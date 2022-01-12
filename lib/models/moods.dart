

//list of primary moods

enum PrimaryMoods {
  Angry,
  Fearful,
  Love,
  Joy,
  Surprise,
  Sad,
  Other,
}

//list of secondary moods

enum SecondaryMoods {
  //angry
  angry_Default,
  angry_Jealous,
  angry_Hurt,
  angry_Furious,
  angry_Mad,
  angry_Triggered,

  //fear
  fear_Scared,
  fear_Insecure,
  fear_Helpless,
  fear_Anxious,

  //love
  love_Romantic,
  love_Sentimental,
  love_Appreciative,

  //joy
  joy_Proud,
  joy_Cheerful,
  joy_Peaceful,
  joy_Pleased,
  joy_Eager,
  joy_Happy,

  //surprise
  surprise_Amazed,
  surprise_Confused,
  surprise_Stunned,
  surprise_Shocked,

  //sad
  sad_Lonely,
  sad_Disappointed,
  sad_Miserable,
  sad_Guilty,
  sad_Depressed,

  //other

  other_Empty,
  other_Shameful,
  other_No_Emotion,
}

enum FearMood {
  scared,
  insecure,
  helpless,
  anxious,
}

enum LoveMood {
  romantic,
  sentimental,
  appreciative,
}

enum JoyMood {
  proud,
  cheerful,
  peaceful,
  pleased,
  eager,
}

enum SurpriseMood {
  amazed,
  confused,
  stunned,
  shocked,
}

enum SadMood {
  lonely,
  disappointed,
  miserable,
  guilty,
  depressed,
}

enum OtherMood {
  empty,
  shameful,
}
