import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                      Image.asset('assets/images/pedra.png'),
                      const SizedBox(width: 30,),
                      Image.asset('assets/images/papel.png'),
                      const SizedBox(width: 30,),
                      Image.asset('assets/images/tesoura.png'),
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
