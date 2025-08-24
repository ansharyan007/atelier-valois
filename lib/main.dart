import 'package:atelier_valois/Intro.dart';
import 'package:atelier_valois/component/add.dart';
import 'package:atelier_valois/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>add(),
      builder: (context,child)=> MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const IntroPage(),
        theme: lightmode,
        darkTheme: darkmode,
      ),
    );
  }
}