import 'package:banten_apps/data/dummy_category.dart';
import 'package:banten_apps/models/banten_models.dart';
import 'package:banten_apps/widgets/banten_grid.dart';
import 'package:flutter/material.dart';

class BantenScreen extends StatelessWidget {
  const BantenScreen({super.key, required this.title, required this.banten});

  final String title;
  final List<BantenModels> banten;

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemBuilder: (context, index) {
        Text(banten[index].name);
      },
    );

    if (banten.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text('ups ....'),
            Text('there are no content ....'),
            Text('lets pick some category ....'),
          ],
        ),
      );
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: content);
  }
}
