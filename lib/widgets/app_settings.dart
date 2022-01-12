import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';


class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  _AppSettingsState createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child:
      Column(
        children: [

          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),

            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceBetween,

              children: [
                Text("Theme"),
                //ToggleButtons(children: children, isSelected: isSelected)

                ToggleSwitch(
                  minWidth: 60.0,
                  minHeight: 50.0,
                  initialLabelIndex: 0,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  icons:  [

                    Icons.wb_sunny_rounded,
                    Icons.nights_stay_rounded,

                  ],
                  iconSize: 30.0,
                  activeBgColors:  [[Colors.yellow, Colors.orange],[Colors.blue, Color(
                      0xFF00116B)] ],
                  //animate: true, // with just animate set to true, default curve = Curves.easeIn
                  //curve: Curves.linear, // animate must be set to true when using custom curve
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Text("Customize colors"),
              ],
            ),
          )

        ],
      ),
      
      
    );
  }
}
