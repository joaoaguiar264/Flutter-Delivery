import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/home_component.dart';
import 'package:flutter_application_1/services/firebase_connect.dart';
import 'package:flutter_application_1/views/home_page.dart';
import 'package:flutter_application_1/views/register_page.dart'; // Certifique-se de importar a RegisterPage
import '../components/my_input.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: Text('Sign In', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          ),
          MyInput(
            controller: emailController,
            placeholder: 'Email',
            type: false,
            enabled: true
          ),
          MyInput(
            controller: passwordController,
            placeholder: 'Password',
            type: true,
            enabled: true
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              var auth = await login(emailController.text, passwordController.text);
              if (auth == true) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeComponent()),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Usuário ou senha incorretos.'),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            child: Text('Login'),
          ),
          SizedBox(height: 200),
          RichText(
            text: TextSpan(
              text: 'No account yet? ',
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'Sign up now',
                  style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
