import 'package:coolapp/home_page.dart';
import 'package:flutter/material.dart';
//import 'dart:html';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //maknudi debug oznaku sa zaslona
      theme: ThemeData(primarySwatch: Colors.indigo), //primarna boja
      home:
          const RootPage(), //na zaslon prikazuje RootPage koji prikazuje HomePage
    );
  }
}

class RootPage extends StatefulWidget {
  //Stateful znaći da se sadržaj može ažurati s nećim novim na zaslonu
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0; //za spremanje indeksa
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //AppBar je gornji dio ekrana
        title: const Text('Flutter 🐔'),
      ),
      body: const HomePage(), //klasa iz home_page.dart
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating Action Button pressed');
        },
        child: const Icon(Icons.add), //ono što će biti unutar Widgeta
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          //Lista!
          //Ako želim imati bottomNavigationBar moram imati 2 ili više destinacije
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            //setState kada želim osvježiti zaslon
            currentPage = index;
            //currentPage postaje indeks
          });
        },
        selectedIndex: currentPage,
        //selectedIndex mora biti indeks
      ),
    );
  }
}
