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
      itemCount: banten.length,
      itemBuilder: (context, index) {
        return BantenGridItem(bantenModels: banten[index]);
      },
    );

    if (banten.isNotEmpty) {
      content;
    }

    if (banten.isEmpty) {
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'ups ....',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            Text(
              'there are no content ....',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
            const SizedBox(
              height: 29,
            ),
            Text(
              'lets pick some category ....',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.primary),
            ),
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
