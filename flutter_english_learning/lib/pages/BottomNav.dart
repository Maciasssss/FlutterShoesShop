import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_english_learning/pages/home.dart';
import 'package:flutter_english_learning/pages/order.dart';
import 'package:flutter_english_learning/pages/profile.dart';
import 'package:flutter_english_learning/pages/wallet.dart';
import 'package:flutter_english_learning/services/shared_pref.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentTabindex = 0;
  late List<Widget> pages;
  late Widget curreentPage;
  late Home homepage;
  late Profile profile;
  late Order order;
  late Wallet wallet;
  String? id;

  @override
  void initState()
  {
    homepage=Home();
    order = Order();
    profile = Profile();
    wallet = Wallet();
    pages = [homepage, order,wallet,profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar
      (
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(microseconds: 500),
        onTap: (int index)
        async {
          setState(() {
            currentTabindex = index;
          });
        },
        items: 
      [Icon(
        Icons.home_outlined, 
        color: Colors.white,
        ),
        Icon(Icons.shopping_bag_outlined, color: Colors.white,),
        Icon(Icons.wallet_outlined, color: Colors.white,),
        Icon(Icons.person_outline, color: Colors.white,)
        ],),
        body: pages[currentTabindex],
    );
  }
}