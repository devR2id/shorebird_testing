class Language {
  final int id;
  final String flag;
  final String name;
  final String isoCode;

  Language({
    required this.id,
    required this.flag,
    required this.name,
    required this.isoCode,
  });

  static List<Language> list() {
    return [
      Language(id: 1, flag: "🇬🇧", name: "English", isoCode: "en"),
      Language(id: 2, flag: "🇪🇸", name: "Español", isoCode: "es")
    ];
  }
}
