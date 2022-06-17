import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'God of War',
    'Metal Gear',
    'Call of Duty',
    'The Last of Us',
    'Final Fantasy'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.blueGrey,
          shadowColor: Colors.blueGrey,
          centerTitle: true,
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  trailing:
                      const Icon(Icons.arrow_right, color: Colors.blueGrey),
                  title: Text(options[index]),
                  onTap: () {
                    final game = options[index];
                    print(game);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
