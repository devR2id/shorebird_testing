# Shorebird Testing

Aplicacion de prueba de funcionamiento de Shorebird

# Librerias

```sh
flutter pub add crypto
flutter pub add flutter_secure_storage
flutter pub add http
flutter pub add intl
flutter pub add sqflite
flutter pub add path
```
# Generate localizations

Ejecutar flutter pub get para que se vuelvan a generar los .arb

# Generate app icon

```sh
flutter clean
flutter pub get
dart run flutter_launcher_icons -f app_icon_config.yaml
```