import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_my_app/app/app_widget.dart';
import 'package:flutter_my_app/app/app_module.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}

// # Folder structure

// app/
// ├── app_module.dart
// ├── app_widget.dart
// ├── core/
// │   ├── theme/
// │   │   ├── app_colors.dart
// │   │   ├── app_gradients.dart
// │   │   ├── app_text_styles.dart
// │   │   └── app_theme.dart
// │   └── widgets/
// │       ├── app_bar/
// │       │   └── app_bar_widget.dart
// │       └── bottom_navigator/
// │           └── bottom_navigator_widget.dart
// ├── main.dart
// └── modules/
//     ├── home/
//     │   ├── data/
//     │   │   ├── datasources/
//     │   │   │   └── datasources.dart
//     │   │   ├── models/
//     │   │   │   └── models.dart
//     │   │   └── repositories/
//     │   │       └── repositories.dart
//     │   ├── domain/
//     │   │   ├── entities/
//     │   │   │   └── entities.dart
//     │   │   ├── errors/
//     │   │   │   └── errors.dart
//     │   │   ├── repositories/
//     │   │   │   └── repositories.dart
//     │   │   ├── states/
//     │   │   │   └── states.dart
//     │   │   └── usecases/
//     │   │       └── usecases.dart
//     │   ├── presenter/
//     │   │   ├── pages/
//     │   │   │   └── home_page.dart
//     │   │   ├── stores/
//     │   │   │   └── home_store.dart
//     │   │   └── widgets/
//     │   │       └── home_header_widget.dart
//     │   └── home_module.dart
//     └── splash/
//         ├── presenter/
//         │   ├── pages/
//         │   │   └── splash_page.dart
//         │   └── splash_store.dart
//         └── splash_module.dart
