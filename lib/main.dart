import 'package:flutter/material.dart';
import 'package:flutter_rearch/flutter_rearch.dart';
import 'package:rearch/rearch.dart';

void main() {
  runApp(RearchBootstrapper(child: const MainApp()));
}

class MainApp extends RearchConsumer {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetHandle use) {
    final calculation = use(calculateCapsule);

    return MaterialApp(
      home: Scaffold(body: Center(child: Text('Calculation: $calculation'))),
    );
  }
}

int calculateCapsule(CapsuleHandle use) => use(operandA) + use(operandB);

int operandA(CapsuleHandle use) => 32;

// int operandB(CapsuleHandle use) => 27;
int operandB(CapsuleHandle use) => throw ('Not implemented');
