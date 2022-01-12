
import 'package:trial0106/globals/colors_of_mood.dart';
import 'package:trial0106/models/blueprint_mood.dart';
import 'package:trial0106/models/moods.dart';

/*
class which holds all emotions associated with name, primary and secondary mood and its color

 */

class ConstantsOfMood {

  //ANGRY


  BlueprintMood JEALOUS = BlueprintMood(
      name: "jealous",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Jealous,
      color: angryMoodColor);

  BlueprintMood HURT = BlueprintMood(
      name: "hurt",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Hurt,
      color: angryMoodColor);

  BlueprintMood FURIOUS = BlueprintMood(
      name: "furious",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Furious,
      color: angryMoodColor);

  BlueprintMood MAD = BlueprintMood(
      name: "mad",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Mad,
      color: angryMoodColor);

  BlueprintMood TRIGGERED = BlueprintMood(
      name: "triggered",
      moodPrimary: PrimaryMoods.Angry,
      moodSecondary: SecondaryMoods.angry_Triggered,
      color: angryMoodColor);



  //FEARFUL

  BlueprintMood SCARED = BlueprintMood(
      name: "scared",
      moodPrimary: PrimaryMoods.Fearful,
      moodSecondary: SecondaryMoods.fear_Scared,
      color: fearMoodColor);

  BlueprintMood INSECURE = BlueprintMood(
      name: "insecure",
      moodPrimary: PrimaryMoods.Fearful,
      moodSecondary: SecondaryMoods.fear_Insecure,
      color: fearMoodColor);

  BlueprintMood HELPLESS = BlueprintMood(
      name: "helpless",
      moodPrimary: PrimaryMoods.Fearful,
      moodSecondary: SecondaryMoods.fear_Helpless,
      color: fearMoodColor);

  BlueprintMood ANXIOUS = BlueprintMood(
      name: "anxious",
      moodPrimary: PrimaryMoods.Fearful,
      moodSecondary: SecondaryMoods.fear_Anxious,
      color: fearMoodColor);


  //LOVE

  BlueprintMood ROMANTIC = BlueprintMood(
      name: "romantic",
      moodPrimary: PrimaryMoods.Love,
      moodSecondary: SecondaryMoods.love_Romantic,
      color: loveMoodColor);

  BlueprintMood SENTIMENTAL = BlueprintMood(
      name: "sentimental",
      moodPrimary: PrimaryMoods.Love,
      moodSecondary: SecondaryMoods.love_Sentimental,
      color: loveMoodColor);

  BlueprintMood APPRECIATIVE = BlueprintMood(
      name: "appreciative",
      moodPrimary: PrimaryMoods.Love,
      moodSecondary: SecondaryMoods.love_Appreciative,
      color: loveMoodColor);

  //JOY

  BlueprintMood PROUD = BlueprintMood(
      name: "proud",
      moodPrimary: PrimaryMoods.Joy,
      moodSecondary: SecondaryMoods.joy_Proud,
      color: joyMoodColor);


  BlueprintMood CHEERFUL = BlueprintMood(
      name: "cheerful",
      moodPrimary: PrimaryMoods.Joy,
      moodSecondary: SecondaryMoods.joy_Cheerful,
      color: joyMoodColor);


  BlueprintMood PEACEFUL = BlueprintMood(
      name: "peaceful",
      moodPrimary: PrimaryMoods.Joy,
      moodSecondary: SecondaryMoods.joy_Peaceful,
      color: joyMoodColor);

  BlueprintMood PLEASED = BlueprintMood(
      name: "pleased",
      moodPrimary: PrimaryMoods.Joy,
      moodSecondary: SecondaryMoods.joy_Pleased,
      color: joyMoodColor);

  BlueprintMood EAGER = BlueprintMood(
      name: "eager",
      moodPrimary: PrimaryMoods.Joy,
      moodSecondary: SecondaryMoods.joy_Eager,
      color: joyMoodColor);

  BlueprintMood HAPPY = BlueprintMood(
      name: "happy",
      moodPrimary: PrimaryMoods.Joy,
      moodSecondary: SecondaryMoods.joy_Happy,
      color: joyMoodColor);


  //SURPRISE

  BlueprintMood AMAZED = BlueprintMood(
      name: "amazed",
      moodPrimary: PrimaryMoods.Surprise,
      moodSecondary: SecondaryMoods.surprise_Amazed,
      color: surpriseMoodColor);

  BlueprintMood CONFUSED = BlueprintMood(
      name: "confused",
      moodPrimary: PrimaryMoods.Surprise,
      moodSecondary: SecondaryMoods.surprise_Confused,
      color: surpriseMoodColor);

  BlueprintMood STUNNED = BlueprintMood(
      name: "stunned",
      moodPrimary: PrimaryMoods.Surprise,
      moodSecondary: SecondaryMoods.surprise_Stunned,
      color: surpriseMoodColor);

  BlueprintMood SHOCKED = BlueprintMood(
      name: "shocked",
      moodPrimary: PrimaryMoods.Surprise,
      moodSecondary: SecondaryMoods.surprise_Shocked,
      color: surpriseMoodColor);



  //SAD


  BlueprintMood LONELY = BlueprintMood(
      name: "lonely",
      moodPrimary: PrimaryMoods.Sad,
      moodSecondary: SecondaryMoods.sad_Lonely,
      color: sadMoodColor);

  BlueprintMood DISAPPOINTED = BlueprintMood(
      name: "disappointed",
      moodPrimary: PrimaryMoods.Sad,
      moodSecondary: SecondaryMoods.sad_Disappointed,
      color: sadMoodColor);

  BlueprintMood MISERABLE = BlueprintMood(
      name: "miserable",
      moodPrimary: PrimaryMoods.Sad,
      moodSecondary: SecondaryMoods.sad_Miserable,
      color: sadMoodColor);

  BlueprintMood GUILTY = BlueprintMood(
      name: "guilty",
      moodPrimary: PrimaryMoods.Sad,
      moodSecondary: SecondaryMoods.sad_Guilty,
      color: sadMoodColor);

  BlueprintMood DEPRESSED = BlueprintMood(
      name: "depressed",
      moodPrimary: PrimaryMoods.Sad,
      moodSecondary: SecondaryMoods.sad_Depressed,
      color: sadMoodColor);




  //OTHER


  BlueprintMood EMPTY = BlueprintMood(
      name: "empty",
      moodPrimary: PrimaryMoods.Other,
      moodSecondary: SecondaryMoods.other_Empty,
      color: otherMoodColor);

  BlueprintMood SHAMEFUL = BlueprintMood(
      name: "shameful",
      moodPrimary: PrimaryMoods.Other,
      moodSecondary: SecondaryMoods.other_Shameful,
      color: otherMoodColor);



}
