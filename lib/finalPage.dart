import 'package:bmi_calculator/bmi.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'heiwei.dart';

class FinalPage extends StatefulWidget {
  @override
  static double bmi = double.parse((HeiWei.p()).toStringAsFixed(2));
  _FinalPageState createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Color selection = Colors.greenAccent[400];
  DateTime currentBackPressTime;
  Color w = Colors.white;
  Color getColor(double x) {
    if (x < 18.5)
      return Colors.red;
    else if (x >= 18.5 && x < 25)
      return selection;
    else if (x >= 25 && x < 30)
      return Colors.deepOrange;
    else
      return Colors.red;
  }

  String getHelth(double x) {
    if (x < 18.5)
      return "Underweight";
    else if (x >= 18.5 && x < 25)
      return "Healthy Weight";
    else if (x >= 25 && x < 30)
      return "Overweight";
    else
      return "Overweight";
  }

  String getBMIRange(double x) {
    if (x < 18.5)
      return "(BMI Below 18.5)";
    else if (x >= 18.5 && x < 25)
      return "(BMI 18.5 to 24.9)";
    else if (x >= 25 && x < 30)
      return "(BMI 25.0 to 29.9)";
    else
      return "(BMI 30.0 and above)";
  }

  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      
          onWillPop: ()async {SystemChannels.platform.invokeMethod('SystemNavigator.pop');return false;  },
          child: Scaffold(
        // appBar: AppBar(
        //   iconTheme: IconThemeData(
        //     color: selection, //change your color here
        //   ),
        //   shape: ContinuousRectangleBorder(
        //       borderRadius: BorderRadius.only(
        //           bottomLeft: Radius.circular(35.0),
        //           bottomRight: Radius.circular(35.0))),
        //   title: Text(
        //     'BMI Calculator',
        //     style: TextStyle(color: selection),
        //   ),
        //   centerTitle: true,
        //   elevation: 0.0,
        //   backgroundColor: Colors.transparent,
        // ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: Image(
                    image: AssetImage('images/heart.png'),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${getHelth(FinalPage.bmi)}',
                  style: TextStyle(
                      fontSize: 35,
                      color: getColor(FinalPage.bmi),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${getBMIRange(FinalPage.bmi)}',
                  style: TextStyle(
                      fontSize: 25,
                      color: getColor(FinalPage.bmi),
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Your BMI: ${FinalPage.bmi}',
                    style: TextStyle(
                        fontSize: 30,
                        color: getColor(FinalPage.bmi),
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
      ),
    );
    
  }
}
