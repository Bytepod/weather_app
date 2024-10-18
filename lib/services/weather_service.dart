import '../interfaces/weather_data_source.dart';
import '../models/weather.dart';

class WeatherService {
  final IWeatherDataSource dataSource;

  WeatherService(this.dataSource);

  Future<Weather> getWeather(String cityName) {
    return dataSource.fetchWeather(cityName);
  }
}
