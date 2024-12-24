import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
        ),
        body: BallPage(),
      )),
    );

class BallPage extends StatelessWidget {
  //const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ball();
  }
}

class Ball extends StatefulWidget {
  //const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      ballnumber = Random().nextInt(4) + 1;
                    });
                  },
                  child: Image.asset('images/ball$ballnumber.png'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
