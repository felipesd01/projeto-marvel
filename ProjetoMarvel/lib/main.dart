import 'package:flutter/material.dart';
import 'SegundaTela';

void main() {
  runApp(MaterialApp(
    home: PrimeiraTela(),
  ));
}

class PrimeiraTela extends StatelessWidget {
  const PrimeiraTela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MarvelStudio"),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Image.asset(
            "imagens/Marvel_Logo.png",
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SegundaTela()));
                },
                icon: Icon(Icons.arrow_right),
                label: Text("Avanger avante!"),
              ))
        ],
      ),
    );
  }
}