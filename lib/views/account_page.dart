import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_input.dart';
import 'package:flutter_application_1/services/firebase_connect.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    var auth = FirebaseAuth.instance;
    var db = FirebaseFirestore.instance;

    var userDoc = await db.collection('Users').doc(auth.currentUser!.uid).get();
    var userData = userDoc.data();

    if (userData != null) {
      nameController.text = userData['name'];
      emailController.text = userData['email'];
      phoneController.text = userData['phone_number'];
      addressController.text = userData['address'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Edit\nProfile',
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          MyInput(
              controller: nameController,
              placeholder: 'Username',
              type: false,
              enabled: true),
          MyInput(
              controller: emailController,
              placeholder: 'Email',
              type: false,
              enabled: false),
          MyInput(
              controller: phoneController,
              placeholder: 'Phone',
              type: false,
              enabled: true),
          MyInput(
              controller: addressController,
              placeholder: 'Address',
              type: false,
              enabled: true),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                update(nameController.text, phoneController.text,
                    addressController.text);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Profile updated.'),
                    backgroundColor: Colors.green,
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.symmetric(horizontal: 200, vertical: 15),
              ),
              child: Text('Save Changes')),
        ],
      ),
    );
  }
}
