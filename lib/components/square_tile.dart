import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String path;

  const SquareTile({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.grey[200]),
      child: Image.asset(path, height: 40.0),
    );
  }
}
