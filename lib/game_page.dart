import 'package:flutter/material.dart';
import 'package:flutter_high_low_card_game/result_page.dart';
import 'package:flutter_high_low_card_game/randomcards.dart';

class GamePage extends StatefulWidget {
  List randomCard = CardValue().getRandom();
  List<String> guesscards;
  int score = 0;
  GamePage(this.guesscards, {super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  void test(var condition, var newcard) {
    if (condition) {
      setState(() {
        widget.score += 1;
        widget.guesscards.insert(0, widget.randomCard[0]);
        widget.randomCard[0] = newcard[0];
        widget.randomCard[1] = newcard[1];
      });
    } else {
      setState(() {
        ResultPage(widget.score);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0, -0.85),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: const EdgeInsets.all(0.025),
                    height: 150,
                    width: 100,
                    child: widget.guesscards[0] == ''
                      ? Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black, spreadRadius: 2
                          )
                        ]),
                      )
                      : Image.asset(widget.guesscards[0]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.025),
                    height: 150,
                    width: 100,
                    child: widget.guesscards[1] == ''
                      ? Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black, spreadRadius: 2
                          )
                        ]),
                      )
                      : Image.asset(widget.guesscards[1]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.025),
                    height: 150,
                    width: 100,
                    child: widget.guesscards[2] == ''
                      ? Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black, spreadRadius: 2
                          )
                        ]),
                      )
                      : Image.asset(widget.guesscards[2]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.025),
                    height: 150,
                    width: 100,
                    child: widget.guesscards[3] == ''
                      ? Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black, spreadRadius: 2)
                        ]),
                          )
                          : Image.asset(widget.guesscards[3]),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.025),
                    height: 150,
                    width: 100,
                    child: widget.guesscards[4] == ''
                      ? Container(
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.greenAccent,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black, spreadRadius: 2)
                        ]),
                          )
                          : Image.asset(widget.guesscards[4]),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.85, 0.75),
              child: SizedBox(
                height: 75,
                width: 150,
                child: Text(
                  'Score: ${widget.score}',
                  style: const TextStyle(
                    fontSize: 25, fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, -0.15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
                    height: 200,
                    child: Image.asset(widget.randomCard[0]),
                  ),
                ],
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0, 0.35),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      List testCard = CardValue().getRandom();
                      test(testCard[1] < widget.randomCard[1], testCard);
                    },
                    child: Image.asset('assets/buttons/down.png', scale: 2),
                  ),
                  const SizedBox(width: 50),
                  GestureDetector(
                    onTap: () {
                      List testCard = CardValue().getRandom();
                      test(testCard[1] >= widget.randomCard[1], testCard);
                    },
                    child: Image.asset('assets/buttons/up.png', scale: 2),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 150,
                height: 200,
                child: Image.asset('assets/buttons/cardback.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
