# User Preferences Flutter App

A modern Flutter application demonstrating persistent user preferences, dynamic theming, and clean architecture. This project showcases best practices in state management, UI design, and local storage using Flutter's latest features.

## ✨ Key Features

- **Persistent User Preferences:** Save and load theme, gender, and full name using local storage.
- **Dynamic Theme Switching:** Toggle between light and dark mode with instant UI updates.
- **State Management:** Uses the Provider package for scalable and maintainable state handling.
- **Clean Architecture:** Separation of concerns with providers, shared utilities, and modular widgets.
- **Responsive UI:** Material Design with adaptive widgets and a navigation drawer.
- **Settings Screen:** Update preferences in real time with switches and radio buttons.

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (version 3.10.4 or higher)
- Dart SDK (compatible with Flutter version)
- A device or emulator for Android, iOS, Windows, macOS, or Linux

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/userpreferences.git
   cd userpreferences
   ```

2. **Install dependencies:**
   ```sh
   flutter pub get
   ```

3. **Run the app:**
   ```sh
   flutter run
   ```

## 🗂️ Project Structure

```
lib/
├── main.dart                # App entry point, initializes preferences and providers
├── providers/
│   └── theme_provider.dart  # Theme state management (light/dark mode)
├── screens/
│   ├── home_screen.dart     # Home screen displaying current preferences
│   ├── settings_screen.dart # Settings screen to update preferences
│   └── screens.dart         # Exports for screen modules
├── shared/
│   └── preferences.dart     # Wrapper for SharedPreferences (persistent storage)
└── widgets/
    ├── side_menu.dart       # Navigation drawer widget
    └── widgets.dart         # Exports for widget modules
```

## 🛠️ Main Dependencies

- **[Flutter](https://flutter.dev/):** UI toolkit for building natively compiled applications.
- **[provider](https://pub.dev/packages/provider):** State management solution.
- **[shared_preferences](https://pub.dev/packages/shared_preferences):** Persistent storage for simple data.
- **[cupertino_icons](https://pub.dev/packages/cupertino_icons):** iOS-style icons.

## 📋 Overview

This app demonstrates how to:

- Use `SharedPreferences` for storing user settings locally.
- Implement theme switching with `Provider` and `ChangeNotifier`.
- Structure a Flutter project for scalability and maintainability.
- Build a responsive UI with navigation drawer and adaptive widgets.


