import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_english_learning/services/shared_pref.dart';

import 'model/user_details.dart';

class UserServices{
  String? id;

  UserServices(){
    getUserId();
  }

  void getUserId() {
    id = SharedPreferenceHelper().getUserId(); 
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getUserDetails() {
    final snapshot = FirebaseFirestore.instance.collection('users').doc(id).get();

    return snapshot;
  }

  Future<void> updateUserDetails(UserDetails updatedUser) async {
    try{
      await FirebaseFirestore.instance.collection('users').doc(id).update(updatedUser.toJson()).whenComplete(() => print('Success'));
    }catch (e) {
      debugPrint(e.toString(), wrapWidth: 1024);
    }
  }
}