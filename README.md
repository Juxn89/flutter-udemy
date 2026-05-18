# QR Reader App

Welcome to the **QR Reader App**, a Flutter-based application for scanning QR codes. This project is designed to work seamlessly on both Android and iOS platforms, leveraging Flutter's cross-platform capabilities.

---

## 📋 Prerequisites

Before running the app, ensure you have the following installed:

- **Flutter SDK**: [Install Flutter](https://flutter.dev/docs/get-started/install)
- **Android SDK**: Included with Android Studio.
- **Xcode** (for iOS development): [Install Xcode](https://developer.apple.com/xcode/)

Run `flutter doctor` to verify your setup and fix any issues.

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/your-repo/qr-reader.git
cd qr-reader
```

### 2. Set Up Google Maps API Key

The app uses Google Maps for certain features. To configure the API key:

#### Preferred Method: `.env` File
1. Create a `.env` file in the root of the project (same level as `pubspec.yaml`).
2. Add the following line:
   ```
   MAPS_API_KEY=YOUR_GOOGLE_MAPS_API_KEY
   ```
3. Ensure `.env` is not committed to version control (already ignored by `.gitignore`).

#### Alternative Methods
- **PowerShell (temporary)**:
  ```bash
  $env:MAPS_API_KEY="YOUR_GOOGLE_MAPS_API_KEY"
  ```
- **Local Properties (Android)**:
  Add the following line to `android/local.properties`:
  ```
  MAPS_API_KEY=YOUR_GOOGLE_MAPS_API_KEY
  ```

### 3. Install Dependencies
```bash
flutter pub get
```

### 4. Run the App
```bash
flutter run
```

---

## 🛠 Features

- **QR Code Scanning**: Quickly scan and process QR codes.
- **Google Maps Integration**: Display locations and navigate seamlessly.
- **Cross-Platform Support**: Works on both Android and iOS.

---

## 📂 Repository Structure

- **`lib/`**: Contains the main application code.
  - `main.dart`: Entry point of the app.
  - `widgets/`: Reusable UI components.
  - `pages/`: Screens and views.
  - `providers/`: State management logic.
  - `utils/`: Utility functions.
- **`android/`**: Android-specific configuration and code.
- **`ios/`**: iOS-specific configuration and code.
- **`web/`**: Web-specific configuration (if applicable).

---

## 📦 Dependencies

The app uses the following key dependencies:

- **[flutter_barcode_scanner_plus](https://pub.dev/packages/flutter_barcode_scanner_plus)**: For scanning QR codes.
- **[google_maps_flutter](https://pub.dev/packages/google_maps_flutter)**: For Google Maps integration.
- **[provider](https://pub.dev/packages/provider)**: State management.
- **[sqflite](https://pub.dev/packages/sqflite)**: Local database management.
- **[url_launcher](https://pub.dev/packages/url_launcher)**: Open URLs in the browser or other apps.

---

## 🤝 Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests.

---

## 📜 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 🌐 Useful Links

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Documentation](https://dart.dev/guides)
- [Pub.dev](https://pub.dev/) (Dart & Flutter Packages)

---

## 💡 Notes

- The app will fail to build if `MAPS_API_KEY` is not set.
- For CI/CD, store `MAPS_API_KEY` as a pipeline secret and expose it as an environment variable before running `flutter build` or `flutter run`.

---

Made with ❤️ by Juan Gómez.
