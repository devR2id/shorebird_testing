import 'package:apptesting/presentation/widgets/header/header.dart';
import 'package:apptesting/presentation/widgets/header/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderWidget(title: AppLocalizations.of(context)!.home),
        drawer: const Drawer(child: MenuWidget()),
        body: const Center(child: Text("HOME PAGE UPDATED", style: TextStyle(fontSize: 32))));
  }
}
