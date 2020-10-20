import 'package:bmi_calculator/heiwei.dart';
import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  static int age;
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  final TextEditingController number = TextEditingController(text: "");
  Color selection = Colors.greenAccent[400];
  Color w = Colors.white;

  initState() {
    super.initState();
  }
 void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  bool check() {
    try {
      Age.age = int.parse(number.text);
      return true;
    } on FormatException catch (e) {
      print('invalid');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
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
                'I am...',
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: TextFormField(
                        controller: number,
                        keyboardType: TextInputType.number,
                        cursorColor: selection,
                        decoration: InputDecoration(
                          hintText: 'Age',
                          hintStyle: TextStyle(fontSize: 35, color: selection),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: selection),
                          ),
                        ),
                        style: TextStyle(fontSize: 35, color: selection),
                      ),
                    ),
                  ),
                ),
                Text(
                  ' years old.',
                  style: TextStyle(fontSize: 35, color: selection),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton.extended(
                onPressed: () {
                  if (check() == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HeiWei()));
                  }
                },
                label: Text("Next"),
                icon: Icon(Icons.arrow_right_alt),
                backgroundColor: selection,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
