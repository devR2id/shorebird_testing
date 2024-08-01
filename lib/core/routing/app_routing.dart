import 'package:apptesting/presentation/pages/home_page.dart';
import 'package:apptesting/presentation/pages/storage_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String home = "/";
  static const String storage = "/";

  static Map<String, Widget Function(BuildContext)> routes(BuildContext context) {
    return {
      "/": (context) => const HomePage(),
      "/storage": (context) => const StoragePage(),
    };
  }
}
