import 'package:get_it/get_it.dart';
import 'package:password_manager/core/service/service.dart';
import 'package:password_manager/core/sharedpreference/preferences_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => PreferencesServiceImpl());
  locator.registerLazySingleton(() => ServiceImpl());

  //locator.registerFactory(() => AuthViewModel());
}
