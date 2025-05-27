import 'package:flutter/material.dart';
import 'package:horizon_vert/ecran/commandes.dart';
import 'package:horizon_vert/ecran/galerie.dart';
import 'package:horizon_vert/ecran/actualites.dart';
import 'package:horizon_vert/ecran/plus.dart';

class Acceuil extends StatelessWidget {
  const Acceuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acceuil", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
        indicatorColor: Colors.greenAccent,
        onDestinationSelected: (index) {
          switch (index) {
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Commandes()),
              );
              break;
            case 2:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Galerie()),
              );
              break;
            case 3:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Actualites()),
              );
              break;
            case 4:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Plus()),
              );
              break;
            default:
              break;
          }
        },
        destinations: <NavigationDestination>[
          NavigationDestination(icon: Icon(Icons.home), label: "Acceuil"),
          NavigationDestination(icon: Icon(Icons.book), label: "Commande"),
          NavigationDestination(
            icon: Icon(Icons.photo_library),
            label: "Galerie",
          ),
          NavigationDestination(
            icon: Icon(Icons.newspaper),
            label: "Actualités",
          ),
          NavigationDestination(
            icon: Icon(Icons.add_to_home_screen),
            label: "Plus",
          ),
        ],
      ),
    );
  }
}
