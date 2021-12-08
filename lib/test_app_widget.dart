import 'dart:math';
import 'package:flutter/material.dart';

class TestAppWidget extends StatefulWidget {
  const TestAppWidget({Key? key}) : super(key: key);

  @override
  _TestAppWidgetState createState() => _TestAppWidgetState();
}

class _TestAppWidgetState extends State<TestAppWidget> {
  final Random _random = Random();

  Color _color = const Color(0xFFFFFFFF);

  void changeColor() {
    setState(() {
      _color = Color.fromRGBO(
          _random.nextInt(256), _random.nextInt(256), _random.nextInt(256), 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: changeColor,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          color: _color,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 1,
                    child: SizedBox(
                      width: 10,
                      height: 10,
                    )),
                Expanded(flex: 1, child: Text('Hey there')),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.white)),
                    child: Text('$_color')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
