import 'package:shared_preferences/shared_preferences.dart';

class FavouritePlayerDA {
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<List<String>> getFavourites() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getStringList('favourites') ?? [];
  }

  saveFavourites(List<String> favourites) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setStringList('favourites', favourites);
  }
}
