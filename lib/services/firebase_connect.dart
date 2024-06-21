import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/firebase_options.dart';

login(email, password) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  try {
    var auth = FirebaseAuth.instance;
    await auth.signInWithEmailAndPassword(email: email, password: password);
    print('ok');
    return true;
  } catch (e) {
    print('Error');
    return false;
  }
}

register(name, phone, email, address, password) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  try {
    var auth = FirebaseAuth.instance;
    var db = FirebaseFirestore.instance;
    await auth.createUserWithEmailAndPassword(email: email, password: password);
    db.collection('Users').doc(auth.currentUser!.uid).set({
      'name': name,
      'email': email,
      'phone_number': phone,
      'address': address,
    });
    print('ok');
    return true;
  } catch (e) {
    print('Error');
    return false;
  }
}

update(name, phone, address) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
  db.collection('Users').doc(auth.currentUser!.uid).set({
    'name': name,
    'email': auth.currentUser!.email,
    'address': address,
    'phone_number': phone
  });
}

send_feedback(message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  await db.collection('Feedback').doc('1').set({
    'messages': FieldValue.arrayUnion([message]),
  }, SetOptions(merge: true));
}

get_items() async {
  var db = FirebaseFirestore.instance;
  var itens = await db.collection('Items').get();

  var retorno = await Future.wait(itens.docs.map((doc) async {
    var data = doc.data();

    return {
      'name': data['name'] ?? '',
      'image': data['image'],
      'location': data['location'] ?? '',
      'price': data['price']?.toString() ?? '0',
      'description': data['description'] ?? '',
      'stars': data['stars'] ?? ''
    };
  }).toList());

  return retorno;
}

get_categories() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var items = await db.collection('Categories').get();
  items.docs.forEach((item) => {print(item.data())});
  return items.docs;
}

set_cart(item) async {
  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
  try {
    await db.collection('Users').doc(auth.currentUser!.uid).update({
      'cart': FieldValue.arrayUnion([item]),
    });
  } catch (e) {
    print(e);
  }
}

get_cart() async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
  var user = await db.collection('Users').doc(auth.currentUser!.uid).get();
  var cart = user['cart'];
  return cart;
}

remove_cart(item) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
  try {
    await db.collection('Users').doc(auth.currentUser!.uid).update({
        'cart': FieldValue.arrayRemove([item])
      });

  } catch (e) {
    return 'Erro ao atualizar favoritos: $e';
  }
}

buy_cart(items) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
  await db.collection('Users').doc(auth.currentUser!.uid).set({
    'historic': FieldValue.arrayUnion([items]),
  }, SetOptions(merge: true));
}

Future<bool> isInWishlist(product) async {
  var auth = FirebaseAuth.instance;
  var db = FirebaseFirestore.instance;
  var userDoc = await db.collection('Users').doc(auth.currentUser!.uid).get();
  List favorites = userDoc.data()?['wishlist'] ?? [];
  return favorites.any((item) => item['name'] == product['name']);
}

set_wishlist(item) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
  try {
    var userDoc = await db.collection('Users').doc(auth.currentUser!.uid).get();
    List wishlist = userDoc.data()?['wishlist'] ?? [];
    if (wishlist.any((favorite) => favorite['name'] == item['name'])) {
      await db.collection('Users').doc(auth.currentUser!.uid).update({
        'wishlist': FieldValue.arrayRemove([item])
      });
      return 'Product removes from wishlist.';
    } else {
      await db.collection('Users').doc(auth.currentUser!.uid).update({
        'wishlist': FieldValue.arrayUnion([item])
      });
      return 'Product added to wishlist.';
    }
  } catch (e) {
    return e;
  }
}

get_wishlist() async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
  var user = await db.collection('Users').doc(auth.currentUser!.uid).get();
  var wishlist = user['wishlist'];
  return wishlist;
}

