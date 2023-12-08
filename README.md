# flutter_application_1

Proyecto creado con

```bash
    Node 16.17.0
```

A new Flutter project.

- los nombres de proyecto deben ser minúsculas y separados con guion bajo

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Shortcuts

- import 'package:flutter/material.dart';

```bash
    importM
```

- Crear Widget principal de screen

```bash
    stles
```

- Crear un nuevo main()

    mate

## Links to resources

[Icons](https://fonts.google.com/icons?selected=Material+Symbols+Outlined:settings:FILL@0;wght@400;GRAD@0;opsz@24&icon.platform=android)

[YesOrNot](https://yesno.wtf/)

[Módulos](https://pub.dev/)

## Possible mistakes

- warning: in the working copy of 'windows/flutter/generated_plugins.cmake', LF will be replaced by CRLF the next time Git touches it

La advertencia en sí no es un error crítico y no afectará el funcionamiento de tu proyecto. Sin embargo, si deseas evitar esta advertencia, puedes configurar Git para que mantenga los saltos de línea originales en lugar de reemplazarlos. Puedes hacerlo ejecutando el siguiente comando en la línea de comandos de Git:

```bash
    git config core.autocrlf false
```

## Asserts types

```dart

        AppTheme({this.selectedColor = 0})
        : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Color must be between 0 and ${_colorThemes.length - 1}');

        Square({ required double side })
        : assert( side >= 0, 'side must be >= 0'), // assert = validaciones
            _side = side;
```

## Dependencies

- dart pub add provider
- dart pub add http
