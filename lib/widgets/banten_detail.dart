import 'package:banten_apps/main.dart';
import 'package:banten_apps/models/banten_models.dart';
import 'package:flutter/material.dart';

class BantenDetail extends StatelessWidget {
  const BantenDetail(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
