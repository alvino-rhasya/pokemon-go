import 'package:flutter/material.dart';

class TypeChip extends StatelessWidget {
  const TypeChip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.amber.withOpacity(0.15),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: Colors.amber, width: 1
        )
      ),
      child: Text('Electric'),
    );
  }
}