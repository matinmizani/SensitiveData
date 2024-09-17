import 'package:shared_preferences/shared_preferences.dart';

const _counterKey = "counter";

mixin PersistenceService {
  void saveCounter(counterValue) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setInt(_counterKey, counterValue);
  }

  Future<int> getCounter() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getInt(_counterKey) ?? 0;
  }
}
