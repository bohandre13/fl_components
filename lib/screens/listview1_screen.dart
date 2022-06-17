import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'God of War',
    'Metal Gear',
    'Call of Duty',
    'The Last of Us',
    'Final Fantasy'
  ];

  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.blueGrey,
          shadowColor: Colors.blueGrey,
          centerTitle: true,
          title: const Text('Listview Tipo 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map(
                  (games) => ListTile(
                    trailing: const Icon(Icons.arrow_right),
                    title: Text(games),
                  ),
                )
                .toList(),
          ],
        ));
  }
}
