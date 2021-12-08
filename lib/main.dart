import 'package:flutter/material.dart';
import 'package:test_app/test_app_widget.dart';

void main() {
  runApp(TestApp());
}
 class TestApp extends StatelessWidget {
   const TestApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         body: TestAppWidget(),
       ),
     );
   }
 }
