import 'package:flutter/foundation.dart';
import 'package:weatherApp/model/FuturasPrevisoes.dart';

class Previsao {
  final int temp;
  final String date;
  final String time;
  final String description;
  final String city;
  final int humidity;
  final String condition;
  final String sunrise;
  final String sunset;
  final List<FuturasPrevisoes> previsoesSemana;

    Previsao({
    @required this.temp,
    @required this.date,
    @required this.time,
    @required this.description,
    @required this.city,
    @required this.humidity,
    @required this.condition,
    @required this.sunrise,
    @required this.sunset,
    @required this.previsoesSemana,
  });
}