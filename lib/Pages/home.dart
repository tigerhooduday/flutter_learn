import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("E - Mahila Mitra"),
      ),
      body: Center(
          child:
              Text(" this is my  first test ", style: TextStyle(fontSize: 25))),
      drawer: Drawer(),
    );
  }
}
