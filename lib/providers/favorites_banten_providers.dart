import 'package:banten_apps/models/banten_models.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FavoritesBantenProvider extends StateNotifier<List<BantenModels>> {
  FavoritesBantenProvider() : super([]);

  bool toggleBantenFavorit(BantenModels bantenModels) {
    final bantenIsFavorit = state.contains(bantenModels);
    

    if (bantenIsFavorit) {
      state = state.where((b) => b.id != bantenModels.id).toList();
      return false;
    } else {
      state = [...state, bantenModels];
      return true;
      ;
    }
  }
}

final favoritesBantenProfiders =
    StateNotifierProvider<FavoritesBantenProvider, List<BantenModels>>((ref) {
  return FavoritesBantenProvider();
});
