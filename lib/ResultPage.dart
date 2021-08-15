import 'package:bmicalcalculator/ColorScheme.dart';
import 'package:flutter/material.dart';
class ResultPage extends StatefulWidget {

  final double bmi;
  ResultPage({required this.bmi});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  String resultText = "Normal";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //we check the bmi and assign result value for each bmi as follows and
    //assign a result text as per the bmi. Then we display this result text in the body
    //of the scaffold
    if(widget.bmi < 19)
      {
        setState(() {
          resultText = "Underweight";
        });
      }
    else  if(widget.bmi < 23)
    {
      setState(() {
        resultText = "Normal";
      });
    }
    else  if(widget.bmi < 29)
    {
      setState(() {
        resultText = "Over weight";
      });
    }
    else  if(widget.bmi < 39)
    {
      setState(() {
        resultText = "Obese";
      });
    }
    else  if(widget.bmi < 80)
    {
      setState(() {
        resultText = "Severely Obese";
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Your Result", style: TextStyle(
                  color: Colors.white,
                  fontSize: 28
                ),),
                SizedBox(height:30),
                Container(
                  height:MediaQuery.of(context).size.height*0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: accentColor,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(resultText, style: TextStyle(
                        color: newYellow
                      ),),
                      SizedBox(height:30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(widget.bmi.toInt().toString(), style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),),
                          Text(" Kg/m2", style: TextStyle(
                            color: Colors.white,

                          ),)
                        ],
                      ),
                      SizedBox(height:30),
                      Text("Your BMI is $resultText", style: TextStyle(
                          color: Colors.white
                      ),),
                      //you can use a $ symbol to add a variable inside a string
                      //like how its shown above
                    ],
                  ),
                ),
                SizedBox(height:100),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: newYellow
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Calculate", style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
