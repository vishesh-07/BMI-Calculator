import 'package:bmi_calculator/age.dart';
import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  @override
  static String id = "boy";
  _GenderState createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  Color selection = Colors.greenAccent[400];
  Color w = Colors.white;

  initState() {
    super.initState();
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35.0),
                bottomRight: Radius.circular(35.0))),
        title: Text('BMI Calculator'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: selection,
        bottom: new PreferredSize(
          preferredSize:
              Size.fromHeight(MediaQuery.of(context).size.height * 0.2),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text(
                'I am a...',
                style: TextStyle(fontSize: 35.0, color: w),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/boy.png'),
                        radius: 50,
                        backgroundColor: selection,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Transform.scale(
                        scale: 2,
                        child: Radio(
                          activeColor: selection,
                          groupValue: Gender.id,
                          onChanged: (value) => setState(
                            () => Gender.id = value,
                          ),
                          value: "boy",
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/girl.png'),
                        radius: 50,
                        backgroundColor: selection,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Transform.scale(
                        scale: 2,
                        child: Radio(
                          activeColor: selection,
                          groupValue: Gender.id,
                          onChanged: (value) => setState(
                            () => Gender.id = value,
                          ),
                          value: "girl",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton.extended(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Age()));
                  },
                  label: Text("Next"),
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
