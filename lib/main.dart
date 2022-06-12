import 'package:flutter/material.dart';
import 'package:flutter_high_low_card_game/home_page.dart';


void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const RootPage()
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('♤ ♧ HIGH LOW CARD GAME ♢ ♡'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showInfoDialog(context);
            },
            icon: const Icon(Icons.info_outline_rounded),
          )
        ],
      ),
      body: const HomePage(),
    );
  }
}

showInfoDialog(BuildContext context) {
  AlertDialog info = const AlertDialog(
    title: Text(
      'How to Play',
      textAlign: TextAlign.center,
    ),
    content: Text(
      'The player must guess whether the following card will be higher or lower than the current card. If the player guesses corectly, they get points. If not, the game ends.',
      textAlign: TextAlign.center,
    ),
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return info;
    }
  );
}