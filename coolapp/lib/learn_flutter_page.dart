import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        //Maknuo sam ikonu za povratak na prošlu stranicu
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
              //pop će obrisati trenutnu stranicu tj. vratit nas nazad
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Column(
        children: [
          Image.asset('images/einstein.jpg'),
          SizedBox(height: 10,)
          const Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
