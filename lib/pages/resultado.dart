import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int userChoice;
  final String result;
  final int appChoice;

  const ResultPage({
    super.key,
    required this.userChoice,
    required this.result,
    required this.appChoice,
  });

  String getChoiceImage(int choice) {
    switch (choice) {
      case 0:
        return 'assets/images/pedra.png';
      case 1:
        return 'assets/images/papel.png';
      case 2:
        return 'assets/images/tesoura.png';
      default:
        return 'assets/images/padrao.png';
    }
  }

  String getResultImage(String result) {
    if (result == 'Você venceu!') {
      return 'assets/images/icons8-vitória-48.png';
    } else if (result == 'Você perdeu!') {
      return 'assets/images/icons8-perder-48.png';
    } else {
      return 'assets/images/icons8-aperto-de-mãos-100.png';
    }
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

      body: SizedBox(
        width: double.infinity,

        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.asset(getChoiceImage(appChoice)),
                  const Text(
                    'Escolha do APP',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset(getChoiceImage(userChoice)),
                  const Text(
                    'Sua Escolha',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              Column(
                children: [
                  Image.asset(
                    '${getResultImage(result)}',
                    width: 140,
                    height: 140,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    '$result',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
