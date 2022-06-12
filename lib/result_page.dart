import 'package:flutter/material.dart';
import 'package:flutter_high_low_card_game/home_page.dart';

class ResultPage extends StatefulWidget {
  final int score;
  const ResultPage(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  List<String> guesscards = ['', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "GAME OVER",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Your Score is: ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 50),
          const Text(
            "(widget.score)",
            style: TextStyle(
              color: Colors.greenAccent,
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 60),
          MaterialButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()
                )
              );
            },
            elevation: 0,
            color: Colors.greenAccent,
            textColor: Colors.white,
            child: const Text('Repeat the Game'),
          )
        ],
      ),
    );
  }
}
