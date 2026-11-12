# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

`AGENTS.md` is the single source of truth for Flutter development best practices (layered architecture, state management, performance, testing, routing). Read it before making architectural decisions.

## Repository layout: one branch per course module

This is a Flutter course repo (Udemy, "Flutter: Your Guide for iOS and Android"). Each module lives on its **own git branch**, and each branch holds a **separate, standalone Flutter app at the repo root**. The apps differ in package name, dependencies, and `lib/` contents:

- `main` has no app. It holds only the shared files: `README.md`, `AGENTS.md`, `CLAUDE.md`, `.agents/`, `docs/`, `.editorconfig`, `.vscode/`.
- Module branches: `01-dart-first-steps`, `02-counter`, `03-components`, `04-movies-app`, `05-designs`, `06-qrscanner-sqlite`, `07-user-preferences`, `08-products-app`, …
- Check the current branch before assuming which app, package name (`package:<name>/...` imports), or dependencies are in play. Don't carry code or imports across branches.
- When you add a module, also add its entry to the branch list in `README.md`.

`docs/` contains course PDFs (Flutter fundamentals, widget tree). `.agents/skills/` contains vendored agent skills (tracked in `skills-lock.json`): Flutter layered architecture, manual JSON serialization (`dart:convert`, `fromJson`/`toJson`), and README generation. They are reference material for those tasks.

## Commands

Run these from the repo root on a module branch:

```bash
flutter pub get                                  # install dependencies
flutter run                                      # run on the connected device/emulator
flutter analyze                                  # lint (flutter_lints; platform dirs and build/ are excluded)
flutter test                                     # all tests
flutter test test/widget_test.dart               # single file
flutter test --plain-name "test description"     # single test by name
```

### Android build requirements

The local Flutter SDK (3.50) rejects Android builds below these versions: Gradle 9.3.1, AGP 9.1.1, and Kotlin Gradle Plugin 2.4.10. Branches created with older templates fail with "Your project's Gradle version … is lower than Flutter's minimum supported version". To fix a branch, match what `flutter create` currently generates. Compare its `android/` files against the branch:

- `android/gradle/wrapper/gradle-wrapper.properties`: Gradle 9.5.0.
- `android/settings.gradle.kts`: `com.android.application` 9.3.1 and `org.jetbrains.kotlin.android` 2.4.20.
- `android/app/build.gradle.kts`:
  - Remove `id("kotlin-android")`.
  - Replace `android { kotlinOptions { jvmTarget = ... } }` with a top-level `kotlin { compilerOptions { jvmTarget = org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_17 } }`.
- `android/gradle.properties`: keep `android.newDsl=false` and `android.builtInKotlin=false`.

Flutter is configured to build with JDK 21 (`flutter config --jdk-dir`). Android Studio's bundled JBR is Java 25, which Gradle 8.x can't run on.

## Code style

- **Indent with tabs.** `.editorconfig` sets `indent_style = tab`, and the hand-written Dart in `lib/` uses tabs. Don't run `dart format` over existing files: it rewrites indentation to spaces and produces a huge diff.
- Every file imports `package:flutter/material.dart`. On this Flutter SDK the analyzer reports that import as deprecated (it points to `material_ui`). Treat those as known infos and don't migrate unless asked.
- Each folder exposes a barrel file, and screens and widgets are imported through it, e.g. `screens/screens.dart` and `widgets/widtgets.dart`. Some existing names are misspelled (`widtgets.dart`, `ui/input-decoratios.dart`, the `prefixtIcon` param). Import them as they are spelled. Rename them only when asked, and update every reference if you do.
- Private helper widgets in the same file use a leading underscore (`_LoginForm`, `_PurpleBox`, `_Bubble`), so a screen file holds its own sub-widgets.

## App structure (current branch `08-products-app`, package `productsapp`)

- `main.dart`: `MaterialApp` with **string-named routes** (`'login'`, `'home'`) in the `routes:` map, plus a global `ThemeData.light().copyWith(...)`. It does not use `go_router`, despite what AGENTS.md recommends.
- `screens/`: full pages. `widgets/`: reusable visual pieces (`AuthBackground`, `CardContainer`). `ui/`: static style factories (`InputDecorations.authInputDecoration`). `helpers/`: pure utilities (`RegexValidator`). `providers/`: `ChangeNotifier` state classes for `package:provider`.
- `LoginFormProvider` (it holds the form's `GlobalKey<FormState>`, the field values, and `isLoading`) is not wired up yet. `main.dart` has no `ChangeNotifierProvider`, and the login `Form` has no `key`. Connecting them is the next step in the module.
- `test/widget_test.dart` is still the default counter template, so it **fails** against this app. Replace it, don't try to make the app match it.
