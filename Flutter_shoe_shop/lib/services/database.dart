import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future addUserDetail(Map<String, dynamic> userInfoMap, String id) async {
    return await _firestore.collection('users').doc(id).set(userInfoMap);
  }

  Future UpdateUserwallet(String id, String amount) async {
    return await _firestore.collection("users").doc(id).update({"Wallet": amount});
  }

  Future addShoesItem(Map<String, dynamic> shoeData, String userId) async {
    return await _firestore.collection('Cart').doc(userId).collection('UserCart').add(shoeData);
  }

  Future<Stream<QuerySnapshot>> getBootsItem(String name) async {
    return _firestore.collection(name).snapshots();
  }

  Future<Stream<QuerySnapshot>> getBootsCart(String id) async {
    return _firestore.collection("Cart").doc(id).collection("UserCart").snapshots();
  }
}
