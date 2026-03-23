import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

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

      body: SizedBox(
        width: double.infinity,
        // <--- ESTA LINHA garante que a Column ocupe a largura toda
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            // <--- Agora o centro é o meio da tela
            children: [
              Column(
                children: [
                  Image.asset('assets/images/papel.png'),
                  const Text(
                    'Escolha do APP',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset('assets/images/pedra.png'),
                  const Text(
                    'Sua Escolha',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset(
                    'assets/images/icons8-perder-48.png',
                    width: 140,
                    height: 140,
                    fit: BoxFit.contain,
                  ),
                  const Text(
                    'Você Perdeu/venceu',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(270, 50),
                      backgroundColor: Color.fromRGBO(255, 0, 0, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'Jogar Novamente',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
