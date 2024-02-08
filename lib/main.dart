import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Adicionando o parâmetro key

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contagem de Horas'),
        ),
        body: const Center(
          child: HorasRestantesWidget(),
        ),
      ),
    );
  }
}

class HorasRestantesWidget extends StatelessWidget {
  const HorasRestantesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int horasRestantes = calcularHorasRestantes();

    return Text(
      'Horas restantes: $horasRestantes',
      style: const TextStyle(fontSize: 24),
    );
  }
}

int calcularHorasRestantes() {
  DateTime agora = DateTime.now();
  DateTime dataDesejada = DateTime(2024, 2, 9, 20, 0); // 09/02/2024 às 20:00hs
  Duration diferenca = dataDesejada.difference(agora);
  return diferenca.inHours;
}
