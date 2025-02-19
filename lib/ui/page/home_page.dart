import 'package:flutter/material.dart';

import '../widget/w1.dart';
import '../widget/w2.dart';
import '../widget/w3.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // para obtener un valor con un solo decimal, correctamente redondeado
  // y asignarlo a un string, se puede usar:
  // double.parse(_value.toStringAsFixed(1));
  double valor = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () => _resetvalue(),
                  icon: const Icon(Icons.refresh),
                  key: const Key('Refresh')),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                W1(
                  value: valor,
                  onAdd: _addw1,
                  onSub: _subw1,
                ),
                W2(value: valor),
                W3(
                  value: valor,
                  onAdd: _addw3,
                  onSub: _subw3,
                )
              ],
            ),
          ),
        ],
      )),
    );
  }

  void _addw1() {
    setState(() {
      valor= valor + 0.1;
    });
  }

  void _subw1() {
    setState(() {
      valor= valor - 0.1;
    });
  }

   void _addw3() {
    setState(() {
      valor++;
    });
  }

  void _subw3() {
    setState(() {
      valor--;
    });
  }

  void _resetvalue() {
    setState(() {
      valor= 0;
    });
  }
}
