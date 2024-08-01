import 'package:apptesting/data/models/language_model.dart';
import 'package:apptesting/main.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const HeaderWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      elevation: 4,
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 16),
            child: DropdownButton(
                underline: const SizedBox(),
                icon: const Icon(Icons.language, size: 32),
                items: Language.list()
                    .map<DropdownMenuItem<Language>>((language) => DropdownMenuItem<Language>(
                        value: language,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Text(language.flag, style: const TextStyle(fontSize: 32)),
                          Text(language.name),
                        ])))
                    .toList(),
                onChanged: (language) {
                  if (language != null) {
                    MainApp.setLocale(context, Locale(language.isoCode));
                  }
                }))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(48);
}
