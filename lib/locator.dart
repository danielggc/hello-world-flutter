import 'package:get_it/get_it.dart';
import 'package:hello_world/services/navigation_service.dart';

final locator = GetIt.instance;




void setupLocator() {
  locator.registerSingleton<NavigationService>(NavigationService());

}