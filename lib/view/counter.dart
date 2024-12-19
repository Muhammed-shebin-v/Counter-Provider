import 'package:counter_provider/model/counter.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterHome extends StatefulWidget {
  const CounterHome({super.key});

  @override
  State<CounterHome> createState() => _CounterHomeState();
}

class _CounterHomeState extends State<CounterHome> {
  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 159, 241, 233),
      appBar: AppBar(
        title: const Text(
          'Counter Provider',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
        ),
        foregroundColor: Colors.orange,
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  child: const Icon(Icons.remove)),
              Consumer<Counter>(builder: (context, counter, child) {
                return Text(
                  '${counter.count}',
                  style: const TextStyle(
                      color: Colors.orange,
                      fontSize: 60,
                      fontWeight: FontWeight.w900),
                );
              }),
              ElevatedButton(
                  onPressed: () {
                    counter.increment();
                  },
                  child: const Icon(
                    Icons.add,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
