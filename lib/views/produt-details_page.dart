import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {

  String imageUrl;
  String title;
  String price;
  String location;
  String stars;
  String description;
  ProductDetailsPage({Key? key, required this.imageUrl, required this.title, required this.price, required this.location, required this.stars, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            color: Colors.black,
            onPressed: () {
              // Ação ao pressionar o ícone de favoritos
            },
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Image.network(
                  imageUrl,
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    price,
                    style: TextStyle(fontSize: 20.0, color: Colors.green),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Icon(Icons.location_pin),
                  Text(
                    location,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow),
                  SizedBox(width: 4.0),
                  Text(
                    stars,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Description',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                description,
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.only(top: 300.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Ação ao pressionar o botão "add to cart"
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: 40.0,
                        vertical: 16.0), // Ajusta o padding interno do botão
                    textStyle: TextStyle(
                        fontSize:
                            20.0), // Ajusta o tamanho do texto dentro do botão
                  ),
                  child: Text('Add to Cart'),
                ),
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
