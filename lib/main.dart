import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/home_component.dart';
import 'package:flutter_application_1/views/account_page.dart';
import 'package:flutter_application_1/views/feedback_page.dart';
import 'package:flutter_application_1/views/home_page.dart';
import 'package:flutter_application_1/views/login_page.dart';
import 'package:flutter_application_1/views/produt-details_page.dart';
import 'package:flutter_application_1/views/register_page.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      useMaterial3: false
    ),
    home: LoginPage(),
    ),
  );
}
