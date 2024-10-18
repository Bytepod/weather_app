import 'package:flutter/foundation.dart';

import '../models/weather.dart';
import '../services/weather_service.dart';
import '../core/errors/error_handler.dart';

class WeatherController extends ChangeNotifier {
  final WeatherService weatherService;
  final ErrorHandler errorHandler;

  Weather? _weather;
  String _errorMessage = "";

  Weather? get weather => _weather;
  String get errorMessage => _errorMessage;

  WeatherController(this.weatherService, this.errorHandler);

  Future<void> fetchWeather(String cityName) async {
    try {
      _weather = await weatherService.getWeather(cityName);
      _errorMessage = ""; // Clear previous error message
    } catch (e) {
      _errorMessage = errorHandler.handleError(e as Exception);
    }
    notifyListeners(); // Notify listeners to rebuild UI
  }
}
