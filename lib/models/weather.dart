import 'dart:convert';

class Weather {
  final String cityName;
  final double temperature;
  final String condition;

  Weather({
    required this.cityName,
    required this.temperature,
    required this.condition,
  });

  factory Weather.fromMap(Map<String, dynamic> map) {
    return Weather(
      cityName: map['cityName'] as String,
      temperature: map['temperature'] as double,
      condition: map['condition'] as String,
    );
  }

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);
}
