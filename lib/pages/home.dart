import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jokenpo_app/pages/resultado.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _play(choice) {
    int appChoice = Random().nextInt(3); // 0 - pedra, 1 - papel, 2 - tesoura;
    String result;
    if (choice == appChoice) {
      result = 'Empate!';
    } else if ((choice == 0 && appChoice == 2) ||
        (choice == 1 && appChoice == 0) ||
        (choice == 2 && appChoice == 1)) {
      result = 'Você venceu!';
    } else {
      result = 'Você perdeu!';
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(
          userChoice: choice,
          result: result,
          appChoice: appChoice,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: Text(
          'Pedra, Papel, Tesoura',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromRGBO(255, 60, 60, 1),
      ),

      //body
      body: Padding(
        padding: EdgeInsetsGeometry.all(40),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/padrao.png'),
              Text(
                'Escolha do APP',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: .bold,
                ),
              ),
              Expanded(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //pedra
                      GestureDetector(
                        onTap: () => _play(0),
                        child: Image.asset('assets/images/pedra.png'),
                      ),
                      const SizedBox(width: 30),
                      //papel
                      GestureDetector(
                        onTap: () => _play(1),
                        child: Image.asset('assets/images/papel.png'),
                      ),
                      const SizedBox(width: 30),
                      //tesoura
                      GestureDetector(
                        onTap: () => _play(2),
                        child: Image.asset('assets/images/tesoura.png'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
