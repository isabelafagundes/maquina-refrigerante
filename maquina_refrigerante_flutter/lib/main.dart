import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/interfaces/pages/home.page.dart';

void main() {
  runApp(const MaquinaRefrigeranteApp());
}

class MaquinaRefrigeranteApp extends StatelessWidget {
  const MaquinaRefrigeranteApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Máquina de Refrigerantes",
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Baloo'),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

