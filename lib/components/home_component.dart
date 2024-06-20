import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/account_page.dart';
import 'package:flutter_application_1/views/cart_page.dart';
import 'package:flutter_application_1/views/feedback_page.dart';
import 'package:flutter_application_1/views/home_page.dart';
import 'package:flutter_application_1/views/wishlist_page.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({super.key});

  @override
  State<HomeComponent> createState() => _HomeComponentState();
}

class _HomeComponentState extends State<HomeComponent> {
  List pages = [
    //SingleChildScrollView(child: HomePage()),
    HomePage(),
    WishlistPage(),
    FeedbackPage(),
    AccountPage(),
  ];

  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 20,
          backgroundColor: Colors.white,
          leading: Container(
            padding: const EdgeInsets.only(left: 12.0),
            child: Image.asset(
              'lib/assets/Logo.png',
            ),
          ),
          title: Text(
            "NeedFood",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: IconButton(
                onPressed: () {
                },
                icon: Icon(Icons.search, color: Colors.black),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartPage()),
            );
          },
          backgroundColor: Colors.white,
          child: Icon(Icons.shopping_cart, color: Colors.black),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          currentIndex: selectedPage,
          onTap: (int index) {
            setState(() => selectedPage = index);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Feedback',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
          showUnselectedLabels: true,
        ),
        body: pages[selectedPage],
      );
  }
}