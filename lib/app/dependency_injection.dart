import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_preferences.dart';

final instance = GetIt.instance;

Future<void> initAppModule() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

  instance
      .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));
  // instance
  //     .registerLazySingleton<AppServiceImpl>(() => AppServiceImpl(client: http.Client()));
}
resetAllModules() {
  instance.reset(dispose: false);
  initAppModule();
}
