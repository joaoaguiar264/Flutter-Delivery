import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/firebase_connect.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController feedbackController = TextEditingController();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Feedback',
                textAlign: TextAlign.center, // Centraliza o texto horizontalmente
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),

              Expanded(
                child: Center(
                  child: TextField(
                    controller: feedbackController,
                    maxLines: 10, // Define o número máximo de linhas na área de texto
                    textAlign: TextAlign.center, // Centraliza o texto dentro da área de texto
                    textAlignVertical: TextAlignVertical.center, // Centraliza verticalmente o texto dentro da área de texto
                    decoration: InputDecoration(
                      hintText: 'Leave your feedback here...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  send_feedback(feedbackController.text);
                },
                child: Text('Send'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

