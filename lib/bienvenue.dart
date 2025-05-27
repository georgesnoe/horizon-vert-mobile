import 'dart:io';

import 'package:flutter/material.dart';
import 'package:horizon_vert/ecran/acceuil.dart';

class Bienvenue extends StatelessWidget {
  const Bienvenue({super.key});

  Future<void> _waitAndChangeScreen(BuildContext context) async {
    sleep(Duration(seconds: 10));
    Navigator.push(context, MaterialPageRoute(builder: (context) => Acceuil()));
  }

  @override
  Widget build(BuildContext context) {
    _waitAndChangeScreen(context);
    return Scaffold(
      appBar: AppBar(toolbarHeight: 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/logo-seic.png"),
            CircularProgressIndicator(color: Colors.green),
          ],
        ),
      ),
    );
  }
}
