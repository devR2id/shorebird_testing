import 'package:apptesting/presentation/widgets/header/header.dart';
import 'package:apptesting/presentation/widgets/header/menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StoragePage extends StatefulWidget {
  const StoragePage({super.key});

  @override
  State<StoragePage> createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HeaderWidget(title: AppLocalizations.of(context)!.storage),
        drawer: const Drawer(child: MenuWidget()),
        body: const Center(child: Text("STROAGE", style: TextStyle(fontSize: 32))));
  }
}
