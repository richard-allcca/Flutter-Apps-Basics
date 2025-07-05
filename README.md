# Widgets App

```sh
node 16.17.0
```

## Primeros Pasos

Luego de clonar el repositorio, ejecuta:

```sh
# Instala las dependencias del proyecto
flutter pub get
```

### Creación de un Emulador

Si no tienes creado un emulador, puedes hacerlo desde Android Studio:

1. Abre Android Studio.
2. Ve a **Tools > AVD Manager**.
3. Crea un nuevo dispositivo virtual siguiendo las instrucciones.
4. Selecciona un dispositivo y una imagen del sistema, por ejemplo API 34.
5. Configura las opciones del emulador según tus necesidades (nombre, resolución: 1444x3120, etc.).
6. Una vez creado, inicia el emulador desde el AVD Manager.
7. Para usar el emulador en VS Code, selecciona el emulador en la barra de estado inferior y ejecuta tu aplicación con **F5**.

## Creación de un Nuevo Proyecto

Para crear un nuevo proyecto de Flutter, puedes usar la extensión de Flutter en Visual Studio Code:

1. Presiona **Ctrl + Shift + P**.
2. Escribe "Flutter: New Project".

También puedes usar la terminal con el siguiente comando:

```sh
flutter create nombre_del_proyecto
```

> **Nota:** Asegúrate de que el nombre del proyecto no contenga espacios ni caracteres especiales. Utiliza guiones bajos (`_`) o mayúsculas para separar palabras.

---

<details>
  <summary>Tabla de Contenidos</summary>

- [Notas sobre Widgets](#notas-sobre-widgets)
- [Configuración para Usar Assets](#configuracion-para-usar-assets)
- [Notas sobre Carpetas y Archivos](#notas-sobre-carpetas-y-archivos)
- [Configuración para Gestión de Estado](#configuracion-para-gestion-de-estado)

</details>

---

## Links Útiles

- [Go Router](https://pub.dev/packages/go_router)
- [Material Example Widgets](https://m3.material.io/develop/flutter)
- [Provider](https://pub.dev/packages/provider)
- [Riverpod](https://docs-v2.riverpod.dev/docs/concepts/about_code_generation)
- [Quicktype, Format](https://quicktype.io/)

---

## Notas sobre Carpetas y Archivos

### `domain`

La carpeta `domain` se utiliza para almacenar las entidades de tu aplicación. Las entidades son objetos que representan conceptos clave en tu dominio de negocio. Por ejemplo, si estás construyendo una aplicación de comercio electrónico, podrías tener entidades como `Producto`, `Carrito de Compras` o `Usuario`.

También puede contener otros elementos relacionados con la lógica de negocio, como interfaces de repositorio, casos de uso y validaciones. Estos elementos ayudan a definir cómo interactúan las entidades con otras capas de la aplicación, como la capa de infraestructura o la capa de presentación.

Las entidades encapsulan la lógica y el comportamiento relacionados con el dominio.

### `infrastructure`

La carpeta `infrastructure` actúa como un punto medio entre `domain` y `presentation`.

---

## Notas sobre Widgets

### `ListView()` y sus Tipos

El widget `ListView` se utiliza para construir una lista de widgets desplazables.

- **ListView.builder**: Ideal para listas de longitud desconocida o muy grande. Utiliza un constructor de elementos bajo demanda, mejorando el rendimiento.
- **ListView.separated**: Similar a `ListView.builder`, pero agrega separadores entre los elementos de la lista.
- **ListView.custom**: Permite un control total sobre la construcción de los elementos de la lista.

### Diferencia entre `Column()` y `Stack()`

- **Column**: Organiza elementos secundarios en una matriz vertical.
- **Stack**: Superpone elementos secundarios en capas.

La elección entre ellos dependerá del diseño específico que se desee lograr.

---

## Configuración para Usar Assets

Dentro del archivo `pubspec.yaml`, agrega:

```yaml
assets:
  - assets/images/
```

---

## Configuración para Gestión de Estado

### Provider

Para consumir este state management, necesitas declararlo en la parte más alta de tu app o en lo más alto de donde quieres que se consuma ese estado.

#### Métodos de Extensión en `BuildContext`

```dart
context.watch<T>(), // Escucha los cambios en T
context.read<T>(), // Devuelve T sin escucharlo
context.select<T, R>(R cb(T value)), // Escucha solo una parte de T
```

#### Ejemplo con `MultiProvider`

```dart
@override
Widget build(BuildContext context) {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ChatProvider())
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yes or Not app',
      theme: AppTheme(isDarkMode: false, selectedColor: 6).getTheme(),
      home: const ChatScreen(),
    ),
  );
}
```
