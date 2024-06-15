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
  var db = FirebaseFirestore.instance;
  //var data = await db.collection('Users').doc('123').get();
  //print(data);
  db.collection('Users').doc('1').set({
    'name': name,
    'email': email,
    'phone_number': phone,
    'address' : address,
  });

  try {
    var auth = FirebaseAuth.instance;
    await auth.createUserWithEmailAndPassword(email:email, password:password);
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
  var user = await db.collection('Users').doc(auth.currentUser!.uid).set({
    'name': name,
    'email' : auth.currentUser!.email,
    'address': address,
    'phone_number': phone
  });
}
send_feedback(message) async{
  var auth = FirebaseAuth.instance;

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  var db = FirebaseFirestore.instance;
  var user = await db.collection('Users').doc(auth.currentUser!.uid).get();
  db.collection('Feedback').doc('1').set({
    'message': message,
  });
}
