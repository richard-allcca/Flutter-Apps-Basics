import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter >= 1) _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Functions',
        ),
        // leading: const Icon(Icons.refresh_rounded), // just an Icon
        actions: [
          // Various Icons
          IconButton(
              icon: const Icon(Icons.refresh_rounded), onPressed: _resetCounter)
        ],
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: CustomBody(counter: _counter),
      floatingActionButton: Column(
        // ó Row
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Agrega más FloatingActionButton según sea necesario
          CustomButton(
            icon: Icons.refresh_outlined,
            onPressed: _resetCounter,
          ),
          const SizedBox(height: 16), // Espacio entre los FloatingActionButton
          CustomButton(
            icon: Icons.plus_one_outlined,
            onPressed: _incrementCounter,
          ),
          const SizedBox(height: 16), // Espacio entre los FloatingActionButton
          CustomButton(
            icon: Icons.exposure_minus_1_outlined,
            onPressed: _decrementCounter,
          ),
        ],
      ),
    );
  }
}

class CustomBody extends StatelessWidget {
  const CustomBody({
    super.key,
    required int counter,
  }) : _counter = counter;

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_counter',
            style: const TextStyle(
                fontSize: 100, fontWeight: FontWeight.w400, color: Colors.red),
          ),
          Text(
            _counter == 0 ? 'click' : 'Clicks',
            style: const TextStyle(fontSize: 25),
          )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // enableFeedback: false, // Disabled sound click
      elevation: 0,
      shape: const StadiumBorder(), // Button rounded
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
