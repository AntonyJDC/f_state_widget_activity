import 'package:flutter/material.dart';

class W2 extends StatelessWidget {
  const W2({super.key});
  final double value = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: const Key('W2'),
      width: 200,
      height: 200,
      color: Colors.blueGrey, // should be grey when the decimal is bellow 0.4
    );
  }
}
