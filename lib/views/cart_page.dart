import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/firebase_connect.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double total = products.fold(0, (sum, item) => sum + item.price);

    return FutureBuilder(
      future: get_wishlist(),
      builder: (context, AsyncSnapshot snapshot){
        var user = snapshot.data;
        var items = user['wishlist'];
        return Container(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.all(2),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    
                  );
                },
              ),
            ),
          ],
        ),
      );
      } ,
    );
  }
}