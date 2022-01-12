import 'package:flutter/material.dart';
import 'package:trial0106/globals/globals.dart';
import 'package:trial0106/models/one_mood.dart';
import 'package:trial0106/widgets/mood/slider_widget.dart';

class DisplayOneSlider extends StatefulWidget {
  final OneMood md;


  const DisplayOneSlider({Key? key, required this.md}) : super(key: key);

  @override
  _DisplayOneSliderState createState() => _DisplayOneSliderState();
}

class _DisplayOneSliderState extends State<DisplayOneSlider> {


  @override
  Widget build(BuildContext context) {


    return Column(
      children: [

        SliderWidget(md: widget.md,),

      ],
    );
  }
}
