import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyxGkERWKzkzO29bkKeuKMeGYuPku5Dcq-7w&s',
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
                      'Título do Produto',
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'R\$ 100,00',
                    style: TextStyle(fontSize: 20.0, color: Colors.green),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Icon(Icons.location_pin),
                  Text(
                    'Location',
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
                    '4.5',
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
                'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
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
