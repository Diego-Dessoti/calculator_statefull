import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    String total = "0";

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exemplo stateless',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(80),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Qual e o valor da soma abaixo?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                const Text(
                  "30 + 30 = $total",
                  style: TextStyle(fontSize: 30),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.purple),
                    onPressed: () => {print('Clicou no botao')},
                    child: const Text("Calcular"))
              ]),
        ),
      ),
    );
  }
}
