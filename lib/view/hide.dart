import 'package:counter_provider/model/hide.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class Hider extends StatefulWidget {
  const Hider({super.key});

  @override
  State<Hider> createState() => _HideState();
}

class _HideState extends State<Hider> {
  @override
  Widget build(BuildContext context) {
  var hidevalue = Provider.of<Hide>(context);
    return  Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: hidevalue.hide,
              child: const Text('hello everyone',style: TextStyle(fontSize: 30),)),
            const Gap(30),
            ElevatedButton(
              onPressed: (){
                hidevalue.changeValue();
              }, 
              child: const Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}