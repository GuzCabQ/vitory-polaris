# CLAUDE.md — vitory-polaris

App movil de VITORY (GestDeport). Tocho Bandera en Mexico.

## Stack
- Flutter 3.x + Dart
- Riverpod 2 (estado)
- GoRouter (navegacion)
- Dio (HTTP client)
- freezed + json_serializable (DTOs)

## Comandos
- `flutter run` — ejecutar en emulador/dispositivo
- `flutter analyze` — lint
- `flutter test` — tests
- `dart run build_runner build` — generar codigo freezed
- `flutter build apk` — build debug APK

## Arquitectura: feature-first
lib/core/ (config, router, theme, network)
lib/features/{feature}/data|domain|presentation
lib/shared/widgets/

## Reglas
- ConsumerWidget para widgets con estado (no StatefulWidget)
- Providers para inyeccion de dependencias
- DTOs con freezed (data layer), Entities puras (domain layer)
- context.go() / context.push() para navegacion (no Navigator)
- Touch targets minimo 48px
- 4 estados en toda pantalla: loading, error, empty, data

## Estandares
- Ver ET-009 y ET-011 en el repo VITORY (docs/)
