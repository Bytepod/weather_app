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
      cityName: map['cityName'] ?? 'Unknown City', // Default value
      temperature: map['temperature']?.toDouble() ?? 0.0, // Default value
      condition: map['condition'] ?? 'Unknown Condition', // Default value
    );
  }

  factory Weather.fromJson(String source) =>
      Weather.fromMap(json.decode(source) as Map<String, dynamic>);
}
