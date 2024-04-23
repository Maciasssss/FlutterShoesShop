import 'package:flutter/material.dart';
import 'package:flutter_english_learning/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool casual_boots=false, running_boots=false, high_heel_boots=false, tracking_boots=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left:20.0, right: 20.0 ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Boots. ", 
            style:AppWidget.boldedText()
            
            ),
             Container(
          padding: EdgeInsets.all(3) ,
          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
          child: Icon(Icons.shopping_cart, color: Colors.white,),
        )
          ],
        ),
        SizedBox(height: 20.0,),
        Text("Best boots in the world. ", 
            style:AppWidget.headLineText()
            ),
           Text("Discover and get great boots. ", 
            style:AppWidget.lightText()),
            SizedBox(height: 20.0,),
           showItem(),
            SizedBox(height: 20.0,),
            Row(children: [
              Container(
                child: Column(children: [
                  
                ],),
              )
            ],

            )
      ],),
      ),
    );
  }



// Images on home pages which are categories for diffrent kinds of boots, "Selectedmenu"
  Widget showItem(){
    return     Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              GestureDetector(
                  onTap: () {
                    setState(() {
                      casual_boots = true;
                      running_boots = false;
                      high_heel_boots = false;
                      tracking_boots = false;
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300), 
                      curve: Curves.easeInOut, 
                      decoration: BoxDecoration(
                        color: casual_boots ? Colors.green.withOpacity(0.2) : Colors.white, 
                        border: Border.all(
                          color: casual_boots ? Colors.green : Colors.transparent, 
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        "images/Casual_boots.png",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                  GestureDetector(
                  onTap: () {
                    setState(() {
                      casual_boots = false;
                      running_boots = false;
                      high_heel_boots = true;
                      tracking_boots = false;
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300), 
                      curve: Curves.easeInOut, 
                      decoration: BoxDecoration(
                        color: high_heel_boots ? Colors.green.withOpacity(0.2) : Colors.white, 
                        border: Border.all(
                          color: high_heel_boots ? Colors.green : Colors.transparent, 
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        "images/High-heel_boots.png",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                  GestureDetector(
                  onTap: () {
                    setState(() {
                      casual_boots = false;
                      running_boots = true;
                      high_heel_boots = false;
                      tracking_boots = false;
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300), 
                      curve: Curves.easeInOut, 
                      decoration: BoxDecoration(
                        color: running_boots ? Colors.green.withOpacity(0.2) : Colors.white, 
                        border: Border.all(
                          color: running_boots ? Colors.green : Colors.transparent, 
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        "images/Running_boots.png",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                  GestureDetector(
                  onTap: () {
                    setState(() {
                      casual_boots = false;
                      running_boots = false;
                      high_heel_boots = false;
                      tracking_boots = true;
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300), 
                      curve: Curves.easeInOut, 
                      decoration: BoxDecoration(
                        color: tracking_boots ? Colors.green.withOpacity(0.2) : Colors.white, 
                        border: Border.all(
                          color: tracking_boots ? Colors.green : Colors.transparent, 
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(8),
                      child: Image.asset(
                        "images/Tracking_boots.png",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
            ],);
  }
}

