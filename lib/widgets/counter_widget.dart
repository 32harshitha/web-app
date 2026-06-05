import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  final ValueNotifier<int> counter;

  const CounterWidget({
    super.key,
    required this.counter,
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: counter,
      builder: (context, value, child) {
        return Text(
          'Count: $value',
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        );
      },
    );
  }
}