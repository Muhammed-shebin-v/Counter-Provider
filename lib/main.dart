import 'package:counter_provider/model/counter.dart';
import 'package:counter_provider/model/hide.dart';
import 'package:counter_provider/view/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => Counter()),
    ChangeNotifierProvider(create: (_) => Hide()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Provider',
      theme: ThemeData(primaryColor: Colors.white),
      home: const CounterHome(),
    );
  }
}
