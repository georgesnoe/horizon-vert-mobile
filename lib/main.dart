import 'package:flutter/material.dart';
// import 'package:horizon_vert/bienvenue.dart';
import 'package:horizon_vert/ecran/acceuil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Horizon Vert',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: "Inter"),
      home: Acceuil(),
    );
  }
}
