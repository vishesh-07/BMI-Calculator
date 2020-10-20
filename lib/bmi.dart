import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

import 'gender.dart';
import 'gender.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  Color selection = Colors.greenAccent[400];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(MediaQuery.of(context).size.height *
              0.25), // here the desired height
          child: AppBar(
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0))),
            title: Text('BMI Calculator',style: TextStyle(fontSize: 30),),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: selection,
          )),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Gender()),
                    );
                  },
                  label: Text("Let's Start"),
                  icon: Icon(Icons.arrow_right_alt),
                  backgroundColor: selection,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
