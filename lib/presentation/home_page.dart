import 'package:apptesting/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
                onPressed: () => MainApp.setLocale(context, const Locale('es')),
                child: Text(AppLocalizations.of(context)?.hello ?? "No text"))));
  }
}
