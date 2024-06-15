import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Container(
            color: Colors.black,
            height: 1,
          ),
        ),
        title: Row(
          children: [
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyxGkERWKzkzO29bkKeuKMeGYuPku5Dcq-7w&s', // Placeholder logo
              height: 40,
            ),
            SizedBox(width: 8),
            Text(
              'NeedFood',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtqtRnNZU2ZlfXUgVPP-ewXbXXhFhpr6lXCw&s',
                  ),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    elevation: 4.0,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10.0)),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyxGkERWKzkzO29bkKeuKMeGYuPku5Dcq-7w&s',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Burger',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 16.0), // Espaçamento entre os cards
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.black, width: 1.0),
                    ),
                    elevation: 4.0,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(10.0)),
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyxGkERWKzkzO29bkKeuKMeGYuPku5Dcq-7w&s',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Burger',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Popular Now',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildPopularItemCard('https://via.placeholder.com/100',
                      'Beef Burger Mcd', 'Rp. 20.000'),
                  _buildPopularItemCard('https://via.placeholder.com/100',
                      'Pizza Fruit', 'Rp. 40.000'),
                  _buildPopularItemCard('https://via.placeholder.com/100',
                      'Sandwich', 'Rp. 15.000'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Recommended',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  _buildRecommendedItemCard(
                      'https://via.placeholder.com/300x200'),
                  _buildRecommendedItemCard(
                      'https://via.placeholder.com/300x200'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.feedback), label: 'Feedback'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: Colors.orange,
      ),
    );
  }

  Widget _buildCategoryCard(IconData icon, String label) {
    return Container(
      width: 80,
      margin: EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(icon, size: 30),
          ),
          SizedBox(height: 8),
          Text(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }

  Widget _buildPopularItemCard(String imageUrl, String title, String price) {
    return Container(
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
    );
  }

  Widget _buildRecommendedItemCard(String imageUrl) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Image.network(imageUrl,
          height: 200, width: double.infinity, fit: BoxFit.cover),
    );
  }
}
