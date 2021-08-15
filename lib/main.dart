import 'package:bmicalcalculator/ColorScheme.dart';
import 'package:bmicalcalculator/ResultPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        fontFamily: 'sfui',
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int ageValue = 30;
  int weightValue = 50;
  double heightValue = 160;
  String gender = "Male";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold provides many widgets like app bar, side drawer etc. It will also expand to the whole device
      backgroundColor: bgColor,
      body: SafeArea(
        //safearea is added to avoid content below the notch
        child: SingleChildScrollView(
          //singleChildScrollView is used for adding a scroll to the content. In shorter mobiles it will be useful
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              //a column can hold multiple widgets from top to bottom
              children: [
                Row(
                  //a row can hold multiple widgets from left to right
                  //This row contains the first two widgets (Gender selection)
                  children: [
                    Expanded(
                      //Expanded will expand a widget to all the available space
                      child: InkWell(
                        //Inkwell will give us an option to use ontap or on doubleTap etc.
                        onTap: (){
                          setState(() {
                            gender = "Male";
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: (gender == "Male")?newYellow:accentColor,
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          height:206,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("asset/image/male.png"),
                              SizedBox(height: 20,),
                              Text("Male", style: TextStyle(
                                color: Colors.white
                              ),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 14,),
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            gender = "Female";
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            //to add curves to a container
                              color: (gender == "Female")?newYellow:accentColor,
                              borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          height:206,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Image.asset("asset/image/female.png"),
                             //to import an asset image
                             SizedBox(height: 20,),
                             Text("Female", style: TextStyle(
                               color: Colors.white
                             ),)
                           ],

                          ),
                        ),
                      ),
                    )
                  ],
                ),
                 Container(
                   decoration: BoxDecoration(
                       color: accentColor,
                     borderRadius: BorderRadius.all(Radius.circular(30))
                   ),
                 margin: EdgeInsets.symmetric(vertical: 20),
                  height: 200,
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Height", style: TextStyle(
                         color: Colors.white
                       ),),
                       SizedBox(height:30),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Text(heightValue.toInt().toString(), style: TextStyle(
                             color: Colors.white,
                             fontSize: 24,
                             fontWeight: FontWeight.bold
                           ),),
                           Text("cm", style: TextStyle(
                             color: Colors.white
                           ),)
                         ],
                       ),
                       Slider(
                         //used to add a slider widget
                         activeColor: newYellow,
                         inactiveColor: newYellow.withOpacity(0.5),
                         min: 60,
                         max: 260,
                         value: heightValue,
                         onChanged: (value){
                           setState(() {
                             heightValue = value;
                           });
                         },
                       )
                     ],
                   ),

                ),
                Row(
                  children: [

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        height:206,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Age", style: TextStyle(
                                color: Colors.white
                            ),),
                            SizedBox(height:20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(ageValue.toString(), style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24
                                ),),
                                Text(" Years", style: TextStyle(
                                  color: Colors.white,

                                ),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(onPressed: (){
                                  setState(() {
                                    ageValue--;
                                  });
                                }, icon: Icon(Icons.remove_circle, color: Colors.white,)),
                                IconButton(
                                  //IconButton provides an onPressed event for an icon
                                    onPressed: (){
                                  setState(() {
                                    ageValue++;
                                  });
                                }, icon: Icon(Icons.add_circle, color: Colors.white,))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 14,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: accentColor,
                            borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        height:206,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              Text("Weight", style: TextStyle(
                                color: Colors.white
                              ),),
                            SizedBox(height:20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(weightValue.toString(), style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                                ),),
                                Text(" Kg", style: TextStyle(
                                  color: Colors.white,

                                ),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(onPressed: (){
                                  setState(() {
                                    weightValue--;
                                  });
                                }, icon: Icon(Icons.remove_circle, color: Colors.white,)),
                                IconButton(onPressed: (){
                                  setState(() {
                                    weightValue++;
                                  });
                                }, icon: Icon(Icons.add_circle, color: Colors.white,))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height:20),
                InkWell(
                  onTap: (){
                   // print(weightValue);
                    //print(heightValue.toInt());
                    double heightInMeter = heightValue/100;
                    //print(heightInMeter);
                    double bmi = weightValue/(heightInMeter*heightInMeter);
                    print("BMI $bmi");
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(bmi: bmi,)));
                   //to navigate to the next page
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
