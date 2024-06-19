import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/firebase_options.dart';

login(email, password) async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  try {
    var auth = FirebaseAuth.instance;
    await auth.signInWithEmailAndPassword(email:email, password:password);
    print('ok');
    return true;
  } catch (e) {
    print('Error');
    return false;
  }
}

register(name, phone, email, address, password) async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  
  try {
    var auth = FirebaseAuth.instance;
    var db = FirebaseFirestore.instance;
    await auth.createUserWithEmailAndPassword(email:email, password:password);
    db.collection('Users').doc(auth.currentUser!.uid).set({
    'name': name,
    'email': email,
    'phone_number': phone,
    'address' : address,
    });
    print('ok');
    return true;
  } catch (e) {
    print('Error');
    return false;
  }
}

update(name, phone, address) async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var auth = FirebaseAuth.instance;
  db.collection('Users').doc(auth.currentUser!.uid).set({
    'name': name,
    'email' : auth.currentUser!.email,
    'address': address,
    'phone_number': phone
  });
}
send_feedback(message) async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  await db.collection('Feedback').doc('1').set({
      'messages': FieldValue.arrayUnion([message]),
  }, SetOptions(merge: true));
}

get_items() async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var items = await db.collection('Items').get();
  print(items.docs);
  items.docs.forEach((item) => {
    print(item.data())
  });
  return items.docs;
}

get_categories() async{
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var items = await db.collection('Categories').get();
  print(items.docs);
  items.docs.forEach((item) => {
    print(item.data())
  });
  return items.docs;
}