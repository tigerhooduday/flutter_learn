import "package:flutter/material.dart";
import 'package:hexcolor/hexcolor.dart';

class Trails extends StatefulWidget {
  const Trails({super.key});

  @override
  State<Trails> createState() => _TrailsState();
}

class _TrailsState extends State<Trails> {
  @override
  bool changebutton = false;
  Widget build(BuildContext context) {
    return Material(
        child: InkWell(
      splashColor: Colors.white,
      onTap: () async {
        setState(() {
          changebutton = true;
        });
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 4),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.1,
              0.5,
              0.1,
              0.11,
              0.9,
            ],
            colors: [
              HexColor("#272727"),
              HexColor("#4C5974"),
              HexColor("#8DB4FF"),
              HexColor("#4C5974"),
              HexColor("#272727")
            ],
          ),
        ),
      ),
    ));
  }
}
