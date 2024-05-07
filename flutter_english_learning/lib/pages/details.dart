import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_english_learning/widget/widget_support.dart';


class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0 ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        GestureDetector
        (
          onTap: () {
            Navigator.pop(context);
          } ,
          child: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,)),
          Image.asset("images/casual_boots_1.png", width: MediaQuery.of(context).size.width, height: MediaQuery.of(context).size.height/2.5,fit: BoxFit.fill,),
          SizedBox(height: 10.0,),
         
          Row(
            
            children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("casual_boots",style: AppWidget.semiboldedText(),),
                 Text("Summer Boots",style: AppWidget.headLineText(),),
               ],
             ),
             Spacer(),
            GestureDetector(
              onTap: () {
                if (a>1) {
                  --a;
                }
                setState(() {
                  
                });
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                child: Icon(Icons.remove, color: Colors.white ,)
              ),
            ),
            SizedBox(width: 20.0,),
             Text(a.toString(), style: AppWidget.semiboldedText(),),
             SizedBox(width: 20.0,),
                 GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {
                      
                    });
                  },
                   child: Container(
                                 decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                                 child: Icon(Icons.add, color: Colors.white ,)
                               ),
                 )
          ],),
          SizedBox(height: 20.0,),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",style: AppWidget.lightText(),maxLines: 3,),
         SizedBox(height: 20.0,),
          Row(children: [
            Text("Delivery time",style: AppWidget.semiboldedText(),),
            SizedBox(width: 5.0,),
            Icon(Icons.alarm, color: Colors.black54,),
            SizedBox(width: 5.0,),
            Text("2-3 days shipping",style: AppWidget.semiboldedText(),)
          ],),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom:40.0 ),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Total Price", style: AppWidget.semiboldedText(),),
                 Text("\$250", style: AppWidget.headLineText(),)
              ],),
              Container(
                width: MediaQuery.of(context).size.width/2,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Text("Add to cart", style: TextStyle(color: Colors.white, fontSize: 16.0 ,fontFamily: 'Jersey25' ),),
                  SizedBox(width: 30.0,),
                  Container(

                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.grey, borderRadius: BorderRadius.circular(8)
                    ),
                    child: Icon(Icons.shopping_cart_outlined, color: Colors.white,)
                  ),
                  SizedBox(width: 10.0,)
                ],),
              )
            ],),
          )
      ],),),
    );
  }
}