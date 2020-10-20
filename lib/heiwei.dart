import 'dart:math';

import 'package:bmi_calculator/finalPage.dart';
import 'package:flutter/material.dart';

class HeiWei extends StatefulWidget {
 static  var height = 0.0,weight=0.0;
 static double  p(){
     double bmi=(HeiWei.weight/pow((HeiWei.height/100), 2));
    return bmi;
  }
  @override
  _HeiWeiState createState() => _HeiWeiState();
}

class _HeiWeiState extends State<HeiWei> {
  Color selection = Colors.greenAccent[400];
  Color w = Colors.white;
  
  initState() {
    super.initState();
  }
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
                'I have...',
                style: TextStyle(fontSize: 35.0, color: w),
              ),
            ),
          ),
        ),
      ),
      body: Column(children:[ Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Height',
              style: TextStyle(
                  fontSize: 35.0,
                  color: selection,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Slider(
                  activeColor: selection,
                  min: 0,
                  max: 250,
                  value: HeiWei.height,
                  onChanged: (value) {
                    setState(() {
                      HeiWei.height = value;
                    });
                  },
                ),
              ),
              Container( margin: const EdgeInsets.all(15.0),
  padding: const EdgeInsets.all(3.0),
  decoration: BoxDecoration(
    border: Border.all(color:selection)
  ),

                child: Text('${HeiWei.height.toInt()} cm',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: selection ),)),
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Weight',
              style: TextStyle(
                  fontSize: 35.0,
                  color: selection,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Slider(
                  activeColor: selection,
                  min: 0,
                  max: 150,
                  value: HeiWei.weight,
                  onChanged: (value) {
                    setState(() {
                      HeiWei.weight = value;
                    });
                  },
                ),
              ),
              Container( margin: const EdgeInsets.all(15.0),
  padding: const EdgeInsets.all(3.0),
  decoration: BoxDecoration(
    border: Border.all(color:selection)
  ),

                child: Text('${HeiWei.weight.toInt()} kg',style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: selection ),)),
            ],
          ),
        ],
      ),
      SizedBox(height: MediaQuery.of(context).size.height*0.15,),
      Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton.extended(
                onPressed: () {
                  
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => FinalPage()));
                },
                label: Text("Calculate your BMI"),
                icon: Icon(Icons.arrow_right_alt),
                backgroundColor: selection,
              ),
            ),
          ),
      ],
      ),
    );
  }
}
