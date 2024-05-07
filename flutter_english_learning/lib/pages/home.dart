import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_english_learning/pages/details.dart';
import 'package:flutter_english_learning/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // ignore: non_constant_identifier_names
  bool casual_boots=false, running_boots=false, high_heel_boots=false, tracking_boots=false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
  body: SingleChildScrollView(
    child: Container(
      margin: EdgeInsets.only(top: 50.0, left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Boots. ",
                style: AppWidget.boldedText(),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.shopping_cart, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Text(
            "Best boots in the world. ",
            style: AppWidget.headLineText(),
          ),
          Text(
            "Discover and get great boots. ",
            style: AppWidget.lightText(),
          ),
          SizedBox(height: 20.0,),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: showItem(),
          ),
          SizedBox(height: 30.0,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: Material(
                      elevation: 5.90,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start, //text to left sight
                          children: [
                            Image.asset("images/casual_boots_1.png", width: 150, height: 150, fit: BoxFit.fill,),
                            Text("Casual boots",
                              style: AppWidget.semiboldedText(),),
                            SizedBox(height: 5.0,),
                            Text("Best for Summer",
                              style: AppWidget.lightText(),),
                            SizedBox(height: 5.0,),
                            Text("\$25", style: AppWidget.semiboldedText(),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15.0,),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Material(
                    elevation: 5.90,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, //text to left sight
                        children: [
                          Image.asset("images/casual_boots_2.png", width: 150, height: 150, fit: BoxFit.cover,),
                          Text("Casual boots",
                            style: AppWidget.semiboldedText(),),
                          SizedBox(height: 5.0,),
                          Text("Best for Summer",
                            style: AppWidget.lightText(),),
                          SizedBox(height: 5.0,),
                          Text("\$25", style: AppWidget.semiboldedText(),)
                        ],
                      ),
                    ),
                  ),
                ),
                 SizedBox(width: 15.0,),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Material(
                    elevation: 5.90,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, //text to left sight
                        children: [
                          Image.asset("images/casual_boots_2.png", width: 150, height: 150, fit: BoxFit.cover,),
                          Text("Casual boots",
                            style: AppWidget.semiboldedText(),),
                          SizedBox(height: 5.0,),
                          Text("Best for Summer",
                            style: AppWidget.lightText(),),
                          SizedBox(height: 5.0,),
                          Text("\$25", style: AppWidget.semiboldedText(),)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("images/Casual_boots_2.png", height: 150, width: 150,fit: BoxFit.cover,),
                          SizedBox(width: 20.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Casual boots", style: AppWidget.semiboldedText()),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Best for Summer", style: AppWidget.lightText()),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("\$55", style: AppWidget.semiboldedText()),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("images/Casual_boots_1.png", height: 150, width: 150, fit: BoxFit.fill,),
                          SizedBox(width: 20.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Another Product", style: AppWidget.semiboldedText()),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Description of another product", style: AppWidget.lightText()),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("\$50", style: AppWidget.semiboldedText()),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
             SizedBox(height: 20.0,),
                Container(
                  margin: EdgeInsets.only(right: 10.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset("images/Casual_boots.png", height: 150, width: 150, fit: BoxFit.fill,),
                          SizedBox(width: 20.0,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Another Product", style: AppWidget.semiboldedText()),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("Description of another product", style: AppWidget.lightText()),
                              ),
                              SizedBox(height: 5.0,),
                              Container(
                                width: MediaQuery.of(context).size.width/2,
                                child: Text("\$50", style: AppWidget.semiboldedText()),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
            
              ],
            ),
          ),
        ],
      ),
    ),
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

