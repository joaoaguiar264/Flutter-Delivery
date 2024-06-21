import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/categories_component.dart';
import 'package:flutter_application_1/components/item_component.dart';
import 'package:flutter_application_1/components/recommended_component.dart';
import 'package:flutter_application_1/services/firebase_connect.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List>(
        future: Future.wait([
          get_items(),
          get_categories(),
        ]),
        builder: (context, AsyncSnapshot<List> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          var items = snapshot.data?[0];
          var categories = snapshot.data?[1];
          return Scaffold(
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                    child: Text('Categories',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      height: 150,
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categories.length,
                        itemBuilder: (context, index) {
                          var category = categories[index];
                          return Row(
                            children: [
                              CategoriesComponent(category: category),
                            ],
                          );
                        },
                      )),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                    child: Text('Popular Now',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      height: 220,
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          var item = items[index];
                          return Row(
                            children: [
                              ItemComponent(
                                item: item,
                              ),
                            ],
                          );
                        },
                      )),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                    child: Text('Recommended',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                  Container(
                      height: 205,
                      padding: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length - 3,
                        itemBuilder: (context, index) {
                          var item = items[index + 3];
                          return Row(
                            children: [
                              RecommendedComponent(item: item),
                            ],
                          );
                        },
                      )),
                ],
              ),
            ),
          );
        });
  }
}
