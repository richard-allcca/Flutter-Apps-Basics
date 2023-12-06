import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counter_functions_screen.dart';
// import 'package:flutter_application_1/presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // NOTE - Método para el color usado por default
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
            useMaterial3: true,
            // NOTE - Método para el color usado por el profe simplificado
            colorSchemeSeed: Colors.blueAccent),
        // home: const CounterScreen());
        home: const CounterFunctionsScreen());
  }
}
