// ignore_for_file: unused_import
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_english_learning/pages/BottomNav.dart';
import 'package:flutter_english_learning/pages/login.dart';
import 'package:flutter_english_learning/pages/signup.dart';
import 'package:flutter_english_learning/pages/onboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_english_learning/widget/app_constant.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = publishableKey;
  await Firebase.initializeApp();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Onboard());
  }
}

