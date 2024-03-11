import 'package:flutter/material.dart';

class IPBorder extends StatelessWidget {
  const IPBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Container(
        width: 1300,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.black12, // choose your color
              width: 1.0, // choose the width
            ),
          ),
        ),
        // child: const Text('This is a bordered line'),
      ),
    );
  }
}
