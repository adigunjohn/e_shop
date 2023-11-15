import 'package:eshop/model/services/navigation_service.dart';
import 'package:eshop/utils/apptheme.dart';
import 'package:eshop/utils/router.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setupLocator(){
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => AppTheme());
  locator.registerLazySingleton(() => AppRouter());//create only one instance of the app
}
