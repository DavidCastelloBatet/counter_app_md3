import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counterClick = 0;

  @override
  Widget build(BuildContext context) {
    String textClick = counterClick == 1 ? 'Click' : 'Clicks';

    return Scaffold(
      appBar: AppBar(title: const Text('Counter Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$counterClick',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text(textClick, style: const TextStyle(fontSize: 30))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counterClick++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
