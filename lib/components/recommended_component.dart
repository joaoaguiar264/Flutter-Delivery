import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/views/produt-details_page.dart';

class RecommendedComponent extends StatelessWidget {

  DocumentSnapshot<Object?> item;
  RecommendedComponent({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetailsPage(item: item)),
        );
      },
      child: Container(  
        width: 300,
        margin: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(item['image'], height: 150, width: 300, fit: BoxFit.cover),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
    
    
  }
}
