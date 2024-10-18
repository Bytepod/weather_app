import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/interfaces/weather_data_source.dart';

class JsonWeatherService implements IWeatherDataSource {
  @override
  Future<Weather> fetchWeather(String cityName) async {
    final url = 'https://api.example.com/weather/json?city=$cityName';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return Weather.fromJson(response.body);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
