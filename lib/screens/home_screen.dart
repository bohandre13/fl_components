import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          backgroundColor: Colors.blueGrey,
          shadowColor: Colors.blueGrey,
          centerTitle: true,
          title: const Text('Componentes en Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: const Text('Nombre de Ruta'),
                trailing: const Icon(Icons.arrow_right, color: Colors.blueGrey),
                onTap: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const Listview1Screen());
                  Navigator.pushReplacement(context, route);
                  // Navigator.pushReplacement(context, 'listview2');
                  // Navigator.pushNamed(context, 'CardScreen');
                }),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: 10));
  }
}
