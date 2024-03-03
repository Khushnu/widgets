import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class StreamTutorial extends StatefulWidget {
  const StreamTutorial({super.key});

  @override
  State<StreamTutorial> createState() => _StreamTutorialState();
}

class _StreamTutorialState extends State<StreamTutorial> {
  Stream stream = Stream.periodic(Duration(seconds: 1), (int count) {
    return count;
  });
  Color _colors = Colors.red;
  late StreamSubscription _sub;
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState

    _sub = stream.listen((event) {
      setState(() {
        counter = event;
        _colors = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _colors,
      ),
      backgroundColor: _colors,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );


  }
  @override
  void dispose() {
    // TODO: implement dispose
    _sub.cancel();
    super.dispose();
  }
}
