import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/services/firebase_connect.dart';

class CategoriesComponent extends StatelessWidget {

  String imageUrl;
  String title;
  CategoriesComponent({Key? key, required this.imageUrl, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 150,
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl, height: 100, width: 150, fit: BoxFit.cover),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
