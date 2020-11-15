import 'package:flutter/material.dart';
import 'package:weatherApp/model/FuturasPrevisoes.dart';

class ForecastBar extends StatelessWidget {
  final FuturasPrevisoes previsao;

  ForecastBar(
    this.previsao
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(previsao.data),
        Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 3,
            ),
            child: Image.asset(
              'assets/images/',
              fit: BoxFit.cover,
            ),
          ),
        Text("${previsao.tempMin} Min - ${previsao.tempMax} Max"),
        Text(previsao.descricao),
      ],
    );
  }

  retornaImage(String cond) {
    switch(cond){
      case "storm" {
        }
        break;
      case "snow" {
        return
      } 
      break;
      case "hail" {
        return
      } 
      break;
      case "rain" {
        return
      } 
      break;
      case "fog" {
        return
      } 
      break;
      case "cloud" {
        return
      } 
      break;
      case "cloudly_day" {
        return
      } 
      break;
      case "cloudly_night" {
        return
      } 
      break;
      default {
        if(cond == "none_day" || cond == "clear_day") {
          return
        } else {
          //none_night or clear_night
          return
        }
      }
    }
  }
}