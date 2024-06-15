import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: Center(
                  child: TextField(
                    maxLines: 10, // Define o número máximo de linhas na área de texto
                    textAlign: TextAlign.center, // Centraliza o texto dentro da área de texto
                    textAlignVertical: TextAlignVertical.center, // Centraliza verticalmente o texto dentro da área de texto
                    decoration: InputDecoration(
                      hintText: 'Digite seu feedback aqui...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Ação ao pressionar o botão "Send"
                  // Implemente aqui a lógica para enviar o feedback
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

