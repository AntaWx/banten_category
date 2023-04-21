// import 'package:banten_apps/screens/tabs_screen.dart';
// import 'package:banten_apps/widgets/drawer_main.dart';
import 'package:banten_apps/widgets/switch_widget.dart';
import 'package:flutter/material.dart';

enum Filter { sugihan, sebelumGalungan, prioritas }

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key, required this.currentFilter});

  final Map<Filter, bool> currentFilter;

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _sugihan = false;
  bool _sebelumGalungan = false;
  bool _prioritas = false;

  @override
  void initState() {
    super.initState();
    _sugihan = widget.currentFilter[Filter.sugihan]!;
    _sebelumGalungan = widget.currentFilter[Filter.sebelumGalungan]!;
    _prioritas = widget.currentFilter[Filter.prioritas]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('your filters'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Navigator.pop(
            context,
            {
              Filter.sugihan: _sugihan,
              Filter.sebelumGalungan: _sebelumGalungan,
              Filter.prioritas: _prioritas,
            },
          );
          return false;
        },
        child: Column(
          children: [
            SwitchWidget(
              title: 'sugihan',
              subtitle: 'type of sugihan',
              value: _sugihan,
              onChanged: (value) {
                setState(
                  () {
                    _sugihan = value;
                  },
                );
              },
            ),
            SwitchWidget(
              title: 'sebelum galungan',
              subtitle: 'type of sebelum galungan',
              value: _sebelumGalungan,
              onChanged: (value) {
                setState(
                  () {
                    _sebelumGalungan = value;
                  },
                );
              },
            ),
            SwitchWidget(
              title: 'prioritas',
              subtitle: 'type of prioritas',
              value: _prioritas,
              onChanged: (value) {
                setState(
                  () {
                    _prioritas = value;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
