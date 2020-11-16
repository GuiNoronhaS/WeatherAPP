import 'package:weatherApp/model/FuturasPrevisoes.dart';
import 'package:weatherApp/model/Previsao.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

const _urlMontar = 'https://api.hgbrasil.com/weather?key=dc0e89f4&city_name=';

Previsao previsao;

Future<Previsao> getRequest(String cidade) async {
  final response = await http.get(_urlMontar + cidade);
  Map<String, dynamic> resposta = json.decode(response.body);

  List<FuturasPrevisoes> lista = [
    FuturasPrevisoes(
        condicao: resposta["results"]["forecast"][1]["condition"],
        data: resposta["results"]["forecast"][1]["date"],
        descricao: resposta["results"]["forecast"][1]["description"],
        tempMax: resposta["results"]["forecast"][1]["max"],
        tempMin: resposta["results"]["forecast"][1]["min"]),
    FuturasPrevisoes(
        condicao: resposta["results"]["forecast"][2]["condition"],
        data: resposta["results"]["forecast"][2]["date"],
        descricao: resposta["results"]["forecast"][2]["description"],
        tempMax: resposta["results"]["forecast"][2]["max"],
        tempMin: resposta["results"]["forecast"][2]["min"]),
    FuturasPrevisoes(
        condicao: resposta["results"]["forecast"][3]["condition"],
        data: resposta["results"]["forecast"][3]["date"],
        descricao: resposta["results"]["forecast"][3]["description"],
        tempMax: resposta["results"]["forecast"][3]["max"],
        tempMin: resposta["results"]["forecast"][3]["min"]),
    FuturasPrevisoes(
        condicao: resposta["results"]["forecast"][4]["condition"],
        data: resposta["results"]["forecast"][4]["date"],
        descricao: resposta["results"]["forecast"][4]["description"],
        tempMax: resposta["results"]["forecast"][4]["max"],
        tempMin: resposta["results"]["forecast"][4]["min"]),
    FuturasPrevisoes(
        condicao: resposta["results"]["forecast"][5]["condition"],
        data: resposta["results"]["forecast"][5]["date"],
        descricao: resposta["results"]["forecast"][5]["description"],
        tempMax: resposta["results"]["forecast"][5]["max"],
        tempMin: resposta["results"]["forecast"][5]["min"]),
    FuturasPrevisoes(
        condicao: resposta["results"]["forecast"][6]["condition"],
        data: resposta["results"]["forecast"][6]["date"],
        descricao: resposta["results"]["forecast"][6]["description"],
        tempMax: resposta["results"]["forecast"][6]["max"],
        tempMin: resposta["results"]["forecast"][6]["min"]),
  ];

  previsao = new Previsao(
    city: resposta["results"]["city"],
    condition: resposta["results"]["condition_slug"],
    date: resposta["results"]["date"],
    description: resposta["results"]["description"],
    humidity: resposta["results"]["humidity"],
    sunrise: resposta["results"]["sunrise"],
    sunset: resposta["results"]["sunset"],
    temp: resposta["results"]["temp"],
    time: resposta["results"]["time"],
    previsoesSemana: lista,
  );
  return  previsao;
}