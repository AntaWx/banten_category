import 'package:banten_apps/widgets/switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:banten_apps/providers/filters_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeFilters = ref.watch(filteredBanten);

    return Scaffold(
      appBar: AppBar(
        title: const Text('your filters'),
      ),
      body: Column(
        children: [
          SwitchWidget(
            title: 'sugihan',
            subtitle: 'type of sugihan',
            value: activeFilters[Filter.sugihan]!,
            onChanged: (isChecked) {
              ref
                  .read(filteredBanten.notifier)
                  .setFilter(Filter.sugihan, isChecked);
            },
          ),
          SwitchWidget(
            title: 'sebelum galungan',
            subtitle: 'type of sebelum galungan',
            value: activeFilters[Filter.sebelumGalungan]!,
            onChanged: (isChecked) {
              ref
                  .read(filteredBanten.notifier)
                  .setFilter(Filter.sebelumGalungan, isChecked);
            },
          ),
          SwitchWidget(
            title: 'setelah galungan / kuningan',
            subtitle: 'type of setelah galungan dan setelah kuningan',
            value: activeFilters[Filter.setelahGalungan]!,
            onChanged: (isChecked) {
              ref
                  .read(filteredBanten.notifier)
                  .setFilter(Filter.setelahGalungan, isChecked);
            },
          ),
        ],
      ),
    );
  }
}