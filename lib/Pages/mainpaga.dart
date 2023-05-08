import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Emahila extends StatelessWidget {
  const Emahila({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
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
      child: Column(children: [
        SizedBox(
          height: 100.0,
        ),
        Image.asset(
          "assets/image/MahilMitra.png",
          height: 140,
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 95.0,
        ),
        Container(
          height: 40.0,
          width: 170.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [
                    0.2,
                    0.5,
                    0.9,
                  ],
                  colors: [
                    HexColor("#B9FCBB").withOpacity(0.7),
                    HexColor("#8DB4FF").withOpacity(0.0),
                    HexColor("#B9FCBB").withOpacity(0.7),
                  ])),
          child: Center(
              child: Text("E-Mahila Mitra",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ))),
        ),
        Container(
          child: Row(
            children: [
              Image.asset(
                "assets/image/frontDesign.png",
              )
            ],
          ),
        )
      ]),
    ));
  }
}
