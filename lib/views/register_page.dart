import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/firebase_connect.dart';
import 'package:flutter_application_1/views/login_page.dart';
import '../components/my_input.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController repeatPasswordController = TextEditingController();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Text('Sign Up', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          ),
          MyInput(
            controller: nameController,
            placeholder: 'Username',
            type: false,
            enabled: true
          ),
          MyInput(
            controller: emailController,
            placeholder: 'Email',
            type: false,
            enabled: true
          ),
          MyInput(
            controller: phoneController,
            placeholder: 'Phone',
            type: false,
            enabled: true
          ),
          MyInput(
            controller: addressController,
            placeholder: 'Address',
            type: false,
            enabled: true
          ),
          MyInput(
            controller: passwordController,
            placeholder: 'Password',
            type: true,
            enabled: true
          ),
          MyInput(
            controller: repeatPasswordController,
            placeholder: 'Confirm Password',
            type: true,
            enabled: true
          ),
          RichText(
            text: TextSpan(
              text: 'Already has a account? ',
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Sing In',
                  style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              register(nameController.text, phoneController.text, emailController.text, addressController.text, passwordController.text);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
              // if(auth == true){
               
              // }
              // else{
              //   ScaffoldMessenger.of(context).showSnackBar(
              //     SnackBar(
              //       content: Text('Alguma informação ta errada ai'),
              //       backgroundColor: Colors.red,
              //     ),
              //   );
              // }
            }, 
            child: Text('Register')
          ),
        ],
      ),
    );
  }
}
