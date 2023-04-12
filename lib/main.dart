import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Debag деген жазууну алып салуу
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IamRich(),
    );
  }
}

class IamRich extends StatefulWidget {
  const IamRich({super.key});

  @override
  State<IamRich> createState() => _IamRichState();
}

class _IamRichState extends State<IamRich> {
  @override
  Widget build(BuildContext context) {
    // Scaffold бош экран
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      // Экрандын жогорку болугу
      appBar: AppBar(
        // Экрандын жогору жагына тус беруу
        backgroundColor: Colors.amberAccent,
        // Колоко беруу
        elevation: 15,
        // Текстти ортого жайгаштыруу
        title: const Center(
          child: Text(
            "Тапшырма 3",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'I\'m Rich',
              // Жогорудагы текстке шрифт беруу
              style: TextStyle(fontSize: 48, fontFamily: "Sofia-Regular"),
            ),
            SizedBox(
                width: 300,
                height: 300,
                // Экранга сурот чыгаруу
                child: Image.asset("assets/images/iamrich.png")),
          ],
        ),
      ),
    );
  }
}
