import 'package:flutter/material.dart';
import 'cuidadores.dart';

class AmigopetPage extends StatelessWidget {
  const AmigopetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AmigoPet',
      home: const CuidadoresPage(),
    );
  }
}