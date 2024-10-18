import '../models/weather.dart';

abstract class IWeatherDataSource {
  Future<Weather> fetchWeather(String cityName);
}
