import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_component.dart';
import 'package:flutter_application_1/services/firebase_connect.dart';

class CategoryPage extends StatelessWidget {
  var category;
  CategoryPage({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: get_categoryItems(category),
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        var items = snapshot.data;
        return Scaffold(
          appBar: AppBar(
            title: Text('Carrinho de Compras'),
            elevation: 20,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.75,
                        ),
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          var item = items[index];
                          double value = double.parse(item['price']);
                          return Column(
                            children: [
                              ItemComponent(item: item),
                              SizedBox(height: 4),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
