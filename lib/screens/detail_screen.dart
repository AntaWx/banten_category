import 'package:banten_apps/models/banten_models.dart';
import 'package:flutter/material.dart';

import '../widgets/banten_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.title,
    required this.description,
    required this.bantenModels,
  });

  final String title;
  final String description;
  final List<BantenModels> bantenModels;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BantenDetail(
                title: title,
                description: description,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
