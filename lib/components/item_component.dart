import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/services/firebase_connect.dart';
import 'package:flutter_application_1/views/produt-details_page.dart';

class ItemComponent extends StatelessWidget {

  String imageUrl;
  String title;
  String price;
  String location;
  String stars;
  String description;
  ItemComponent({Key? key, required this.imageUrl, required this.title, required this.price, required this.location, required this.stars, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetailsPage(imageUrl: imageUrl, title: title, price: price, location: location, stars: stars, description: description,)),
        );
      },
      child: Container(  
        width: 150,
        margin: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(imageUrl, height: 100, width: 150, fit: BoxFit.cover),
            SizedBox(height: 8),
            Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
            Text(price, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
    
    
  }
}
