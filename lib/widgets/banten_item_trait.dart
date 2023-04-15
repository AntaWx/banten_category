import 'package:flutter/material.dart';

class BantenItemTrait extends StatelessWidget {
  const BantenItemTrait({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20, color: Colors.white),
        const SizedBox(
          width: 10,
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ],
    );
  }
}
