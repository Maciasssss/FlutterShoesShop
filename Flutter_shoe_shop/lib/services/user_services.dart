import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_Shoe_shop/services/shared_pref.dart';
import 'package:flutter_Shoe_shop/widget/user_model.dart';

class UserServices {
  String? id;

  UserServices() {
    _initUserId();
  }

  Future<void> _initUserId() async {
    id = await SharedPreferenceHelper().getUserId();
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> getUserDetails() async {
    if (id == null) {
      await _initUserId();
    }

    return FirebaseFirestore.instance.collection('users').doc(id).get();
  }

  Future<void> updateUserDetails(UserDetails updatedUser) async {
    try {
      if (id == null) {
        await _initUserId();
      }

      await FirebaseFirestore.instance
          .collection('users')
          .doc(id)
          .update(updatedUser.toMap())
          .whenComplete(() => print('Success'));
    } catch (e) {
      debugPrint(e.toString(), wrapWidth: 1024);
    }
  }
}
