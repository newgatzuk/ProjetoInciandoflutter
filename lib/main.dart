import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
//Declaração de Variável
  var total = "?";

  @override
  Widget build(BuildContext context) {
    print("Carregou o SET");

    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Com Alteração"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Qual Valor da soma abaixo?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
              Text(
                "30 + 40 = $total",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40),
              ),
              ElevatedButton(
                  child: Text(
                    "Calcular",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 92, 255, 247),
                    onPrimary: Color.fromARGB(78, 204, 0, 0),
                  ),
                  onPressed: () {
                    setState(() {
                      total = "50";
                    });

                    print("Cilcou em Calcular");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
