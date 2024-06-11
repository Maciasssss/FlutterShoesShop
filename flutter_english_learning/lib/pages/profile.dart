import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_english_learning/services/user_services/model/user_details.dart';
import 'package:flutter_english_learning/services/user_services/user_services.dart';

import '../widget/widget_support.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _streetController = TextEditingController();
  TextEditingController _buildingController = TextEditingController();
  TextEditingController _placementController = TextEditingController();
  TextEditingController _zipcodeController = TextEditingController();

  bool duringEdit = false;

  UserDetails? currentUser;
  
  @override
  Widget build(BuildContext context) {
    final userServices = UserServices();
    
    return Scaffold(
      appBar: AppBar(
        // leading: Expanded(child: Spacer(),),
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('User details', style: AppWidget.headLineText(),),
        ),
        actions: [
          !duringEdit ? 
          TextButton(
            onPressed: () {
              setState(() {
                duringEdit = !duringEdit;
              });
            }, 
            child: Text(
              'Edit', 
              style: AppWidget.lightText(),
            ),
          ) : TextButton(
            onPressed: () {
              UserDetails newUserDetails = UserDetails(
                id: currentUser!.id,
                wallet: currentUser!.wallet,
                username: _nameController.text,
                email: _emailController.text,
                city: _cityController.text,
                street: _streetController.text,
                buildingNumber: _buildingController.text,
                placementNumber: _placementController.text,
                zipCode: _zipcodeController.text
              );

              userServices.updateUserDetails(newUserDetails);

              setState(() {
                duringEdit = !duringEdit;
              });
            }, 
            child: Text(
              'Save', 
              style: AppWidget.lightText(),
            ),
          ),
        ],
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future: userServices.getUserDetails(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

          if (snapshot.hasError) {
            return Text("Something went wrong");
          }

          if (snapshot.hasData && !snapshot.data!.exists) {
            return Text("Document does not exist");
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> userInfo = snapshot.data!.data() as Map<String, dynamic>;
            currentUser = UserDetails.fromJson(userInfo);

            return Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: !duringEdit ? _buildConstantContent(context, userInfo) : _buildEditableContent(context, userInfo),
            );
          }

          return Container();
        },
      ),
    );
  }

  Widget _buildConstantContent(BuildContext context, Map<String, dynamic> userInfo) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        RichText(
          textScaler: TextScaler.linear(1.25),
          text: TextSpan(
            text: 'Username: ',
            style: AppWidget.boldedText(),
            children: [
              TextSpan(text: userInfo['Name'], style: AppWidget.semiboldedText(),)
            ]
          ),
        ),
        RichText(
          textScaler: TextScaler.linear(1.25),
          text: TextSpan(
            text: 'Email: ',
            style: AppWidget.boldedText(),
            children: [
              TextSpan(text: userInfo['Email'], style: AppWidget.semiboldedText(),)
            ]
          ),
        ),
        RichText(
          textScaler: TextScaler.linear(1.25),
          text: TextSpan(
            text: 'City: ',
            style: AppWidget.boldedText(),
            children: [
              TextSpan(text: userInfo['City'], style: AppWidget.semiboldedText(),)
            ]
          ),
        ),
        
        RichText(
          textScaler: TextScaler.linear(1.25),
          text: TextSpan(
            text: 'Street: ',
            style: AppWidget.boldedText(),
            children: [
              TextSpan(text: userInfo['Street'], style: AppWidget.semiboldedText(),)
            ]
          ),
        ),
        
        RichText(
          textScaler: TextScaler.linear(1.25),
          text: TextSpan(
            text: 'Building: ',
            style: AppWidget.boldedText(),
            children: [
              TextSpan(text: userInfo['BuildingNumber'], style: AppWidget.semiboldedText(),)
            ]
          ),
        ),
        RichText(
          textScaler: TextScaler.linear(1.25),
          text: TextSpan(
            text: 'Placement: ',
            style: AppWidget.boldedText(),
            children: [
              TextSpan(text: userInfo['PlacementNumber'], style: AppWidget.semiboldedText(),)
            ]
          ),
        ),
        RichText(
          textScaler: TextScaler.linear(1.25),
          text: TextSpan(
            text: 'Zipcode: ',
            style: AppWidget.boldedText(),
            children: [
              TextSpan(text: userInfo['ZipCode'], style: AppWidget.semiboldedText(),),
            ]
          ),
        ),
      ],
    );
  }
  
  Widget _buildEditableContent(BuildContext context, Map<String, dynamic> userInfo) {
    _nameController.text = userInfo['Name'];
    _emailController.text = userInfo['Email'];
    _cityController.text = userInfo['City'] ?? 'Add city...';
    _streetController.text = userInfo['Street'] ?? 'Add street name...';
    _buildingController.text = userInfo['BuildingNumber'] ?? 'Add building number...';
    _placementController.text = userInfo['PlacementNumber'] ?? 'Add placement number...';
    _zipcodeController.text = userInfo['ZipCode'] ?? 'Add zipcode...';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextField(
          controller: _nameController,
          decoration: InputDecoration(
            hintText: _nameController.text,
            hintStyle: AppWidget.lightText(),
          ),
          style: AppWidget.lightText(),
        ),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            hintText: _emailController.text,
            hintStyle: AppWidget.lightText()
          ),
          style: AppWidget.lightText(),
        ),
        TextField(
          controller: _cityController,
          decoration: InputDecoration(
            hintText: _cityController.text,
            hintStyle: AppWidget.lightText()
          ),
          style: AppWidget.lightText(),
        ),
        TextField(
          controller: _streetController,
          decoration: InputDecoration(
            hintText: _streetController.text,
            hintStyle: AppWidget.lightText()
          ),
          style: AppWidget.lightText(),
        ),
        TextField(
          controller: _buildingController,
          decoration: InputDecoration(
            hintText: _buildingController.text,
            hintStyle: AppWidget.lightText()
          ),
          style: AppWidget.lightText(),
        ),
        TextField(
          controller: _placementController,
          decoration: InputDecoration(
            hintText: _placementController.text,
            hintStyle: AppWidget.lightText()
          ),
          style: AppWidget.lightText(),
        ),
        TextField(
          controller: _zipcodeController,
          decoration: InputDecoration(
            hintText: _zipcodeController.text,
            hintStyle: AppWidget.lightText()
          ),
          style: AppWidget.lightText(),
        ),
      ]
    );
  }
}