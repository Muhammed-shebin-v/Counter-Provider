import 'package:counter_provider/model/model.dart';
import 'package:counter_provider/view/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (_)=> Counter(),
      child:const CounterProvider())
  );
}
class CounterProvider extends StatelessWidget {
  const CounterProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter Provider',
      theme:ThemeData(primaryColor:Colors.white) ,
      home: const CounterHome(),
    );
  }
}