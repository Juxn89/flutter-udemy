import 'package:flutter_dotenv/flutter_dotenv.dart';

class GlobalConfig {
  // Private constructor
  GlobalConfig._();

  // The single, static instance of the class
  static final GlobalConfig _instance = GlobalConfig._();

  // Factory constructor to return the singleton instance
  factory GlobalConfig() {
    return _instance;
  }

  // Environment variables
  final String tmdbToken = dotenv.env['THE_MOVIEDB_ACCESS_TOKEN'] ?? '';
}