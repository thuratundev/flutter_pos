import 'package:flutter/material.dart';
import 'homepage.dart';



class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "CafePosLite",
      theme: ThemeData(
        fontFamily: 'Ubuntu',
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: ''),
    );
  }

}