import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_component.dart';
import 'package:flutter_application_1/services/firebase_connect.dart';

class WishlistPage extends StatelessWidget {
  WishlistPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //double total = products.fold(0, (sum, item) => sum + item.price);

    return FutureBuilder(
      future: get_wishlist(),
      builder: (context, AsyncSnapshot snapshot) {
        var items = snapshot.data;
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
                      childAspectRatio: 1),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    var item = items[index];
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 13),
                        ItemComponent(item: item),
                        SizedBox(height: 4),
                        ElevatedButton(
                          onPressed: () {
                            set_cart(item);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue, // Cor de fundo
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20), // Bordas arredondadas
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12), // Padding interno
                          ),
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                              color: Colors.white, // Cor do texto
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
