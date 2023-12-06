import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Screen',
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.w400,
                  color: Colors.red),
            ),
            Text(
              _counter == 0 ? 'click' : 'Clicks',
              style: const TextStyle(fontSize: 25),
            )
          ],
        ),
      ),
      // floatingActionButton: Row( // children en fila
      floatingActionButton: Column(
        // children en columna
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
          ),
          // const SizedBox(width: 16), // Espacio entre los FloatingActionButton
          const SizedBox(height: 16), // Espacio entre los FloatingActionButton
          FloatingActionButton(
            onPressed: _decrementCounter,
            child: const Icon(Icons.remove),
          ),
          // Agrega más FloatingActionButton según sea necesario
        ],
      ),
    );
  }
}
