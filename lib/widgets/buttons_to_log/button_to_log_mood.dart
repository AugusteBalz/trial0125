import 'package:flutter/material.dart';
import 'package:trial0106/widgets/history.dart';

final List<String> imageList = [
  "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];



//TODO: take these classes out to separate folders

class ButtonToLogMood extends StatefulWidget {
  const ButtonToLogMood({Key? key}) : super(key: key);

  @override
  _ButtonToLogMoodState createState() => _ButtonToLogMoodState();
}

class _ButtonToLogMoodState extends State<ButtonToLogMood> {
  @override
  Widget build(BuildContext context) {
    return Container(

        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlue,
              Colors.pinkAccent,
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          color: Colors.redAccent,
        ),
      padding: EdgeInsets.all(20),
      child: InkWell(
        onTap: () async {
          final value = await Navigator.pushNamed(context, '/logmood1');

          setState(() {
            const ShowHistory();
          });
        },

        child: Row(children: const [
          Center(
              child: Text(
                "Mood",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              )),
          Icon(
            Icons.bubble_chart_rounded,
            color: Colors.white,
          ),
        ]),
      ),
    );
  }
}

