import 'package:flutter/material.dart';

class RouteObserverService extends RouteObserver<PageRoute<dynamic>> {
  String? _currentRoute;

  String? get currentRoute => _currentRoute;

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    _currentRoute = route.settings.name;
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    _currentRoute = previousRoute?.settings.name;
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    _currentRoute = newRoute?.settings.name;
  }
}

final RouteObserverService routeObserver = RouteObserverService();
