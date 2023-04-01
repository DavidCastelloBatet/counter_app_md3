import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/widgets/custom_button.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int counterClick = 0;

  @override
  Widget build(BuildContext context) {
    String textClick = counterClick == 1 ? 'Click' : 'Clicks';

    return Scaffold(
      appBar: AppBar(title: const Text('Counter Functions'), actions: [
        IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () => setState(() => counterClick = 0))
      ]),
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
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icono: Icons.plus_one,
            onPressed: () => setState(() => counterClick++),
          ),
          const SizedBox(height: 20.0),
          CustomButton(
            icono: Icons.exposure_minus_1,
            onPressed: () => setState(() {
              if (counterClick == 0) return;
              counterClick--;
            }),
          ),
          const SizedBox(height: 20.0),
          CustomButton(
            icono: Icons.refresh_rounded,
            onPressed: () => setState(() => counterClick = 0),
          ),
        ],
      ),
    );
  }
}
