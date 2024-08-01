import 'package:apptesting/core/routing/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).primaryColor,
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              child: Container(
            height: 100,
          )),
          ListTile(
              leading: const Icon(Icons.home, size: 32, color: Colors.white),
              title: Text(AppLocalizations.of(context)!.home,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              onTap: () => NavigationService.replaceRouteWith("/")),
          ListTile(
              leading: const Icon(Icons.storage, size: 32, color: Colors.white),
              title: Text(AppLocalizations.of(context)!.storage,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              onTap: () => NavigationService.replaceRouteWith("/storage"))
        ]));
  }
}
