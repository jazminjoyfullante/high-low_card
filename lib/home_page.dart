import 'package:flutter/material.dart';
import 'package:flutter_high_low_card_game/game_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> guesscards = ['', '', '', '', ''];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return GamePage(guesscards);
              },
            ),
          ); 
        },
        child: const Text('Play Now'),
      ),
    );
  }
}
          