import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_Shoe_shop/pages/home.dart';
import 'package:flutter_Shoe_shop/pages/order.dart';
import 'package:flutter_Shoe_shop/pages/profile.dart';
import 'package:flutter_Shoe_shop/pages/wallet.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
        {
          setState(() {
            currentTabindex = index;
          });
        },
        items: 
      [Icon(
        FontAwesomeIcons.house, 
        color: Colors.white,
        ),
        Icon(FontAwesomeIcons.bagShopping, color: Colors.white,),
        Icon(FontAwesomeIcons.wallet, color: Colors.white,),
        Icon(FontAwesomeIcons.person, color: Colors.white,)
        ],),
        body: pages[currentTabindex],
    );
  }
}