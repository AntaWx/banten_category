import 'package:banten_apps/providers/banten_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

enum Filter { sugihan, sebelumGalungan, setelahGalungan }

class FiltersProvidersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersProvidersNotifier()
      : super({
          Filter.sebelumGalungan: false,
          Filter.setelahGalungan: false,
          Filter.sugihan: false,
        });

  void setFilters(Map<Filter, bool> choseenFilter) {}

  void setFilter(Filter filter, bool isActive) {
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filteredBanten =
    StateNotifierProvider<FiltersProvidersNotifier, Map<Filter, bool>>(
  (ref) => FiltersProvidersNotifier(),
);

final filteredBantenProvider = Provider((ref) {
  final banten = ref.watch(bantenProvider);
  final activeFilter = ref.watch(filteredBanten);
  return banten.where((banten) {
    if (activeFilter[Filter.sugihan]! && !banten.sugihan) {
      return false;
    } else if (activeFilter[Filter.sebelumGalungan]! &&
        !banten.sebelumGalungan) {
      return false;
    } else if (activeFilter[Filter.setelahGalungan]! &&
        !banten.setelahGalungan) {
      return false;
    }
    return true;
  }).toList();
});
