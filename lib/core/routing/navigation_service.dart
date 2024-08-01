import 'package:apptesting/core/routing/router_service.dart';
import 'package:apptesting/main.dart';

class NavigationService {
  static void replaceRouteWith(String routeName) {
    if (routeObserver.currentRoute != routeName) {
      MainApp.navigatorKey.currentState?.pushReplacementNamed(routeName);
    }
  }

  static void navigateTo(String routeName) {
    if (routeObserver.currentRoute != routeName) {
      MainApp.navigatorKey.currentState?.pushNamed(routeName);
    }
  }
}
