
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trial0106/models/mood_select.dart';

/*
taken from
https://github.com/ponnamkarthik/MultiSelectChoiceChip
 */

class MultiSelectChip extends StatefulWidget {
  final MoodSelect reportList;
  final Function(List<String>)? onSelectionChanged;
  final Function(List<String>)? onMaxSelected;
  final int? maxSelection;

  MultiSelectChip(this.reportList, {this.onSelectionChanged, this.onMaxSelected, this.maxSelection});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.moodS.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: FilterChip(
          label: Text(item, style: Theme.of(context).textTheme.headline4,),
          selected: selectedChoices.contains(item),

          backgroundColor: Colors.transparent,
         // shape: StadiumBorder(side: BorderSide(
          //  color: Colors.blueGrey,)),
          selectedColor: Colors.white10,
          selectedShadowColor: widget.reportList.color,
          elevation: 10,
          onSelected: (selected) {
            if (selectedChoices.length == (widget.maxSelection ?? -1) &&
                !selectedChoices.contains(item)) {
              widget.onMaxSelected?.call(selectedChoices);
            } else {
              setState(() {
                selectedChoices.contains(item)
                    ? selectedChoices.remove(item)
                    : selectedChoices.add(item);
                widget.onSelectionChanged?.call(selectedChoices);
              });
            }
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      alignment: WrapAlignment.center,
      children: _buildChoiceList(),
    );
  }
}