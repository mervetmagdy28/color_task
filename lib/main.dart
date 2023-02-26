import 'package:flutter/material.dart';
import 'dart:math'as math;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color color=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              color= Color((math.Random().nextDouble()*0xFFFFFF).toInt()).withOpacity(1.0);
            });
           },
          child: Container(
            width: double.infinity,
            height: double.infinity,
              color: color,
            child: const Center(child: Text("Hey there")),
          ),
        ),
      ),
    );
  }


}
