import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/interfaces/weather_data_source.dart';

import '../core/constants/app_constants.dart';

class JsonWeatherService implements IWeatherDataSource {
  @override
  Future<Weather> fetchWeather(String cityName) async {
    final response = await http.get(Uri.parse(AppConstants.apiBaseUrl));

    if (response.statusCode == 200) {
      return Weather.fromJson(response.body);
    } else {
      throw Exception(AppConstants.serverErrorMessage);
    }
  }
}
