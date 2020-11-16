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
        Text(previsao.data, style: TextStyle(fontSize: 8),),
        Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 3,
            ),
            child: _retornaImage(previsao.condicao),
            ),
        Text("${previsao.tempMin} Min - ${previsao.tempMax} Max", style: TextStyle(fontSize: 7),),
        Text(previsao.descricao, style: TextStyle(fontSize: 8),),
      ],
    );
  }

  _retornaImage(String cond) {
    switch(cond){
      case "storm": {
        return Image.asset('assets/images/storm.png', fit: BoxFit.cover,);
        }
        break;
      case "snow": {
        return Image.asset('assets/images/snowy.png', fit: BoxFit.cover,);
      } 
      break;
      case "hail": {
        return Image.asset('assets/images/hail.png', fit: BoxFit.cover,);
      } 
      break;
      case "rain": {
        return Image.asset('assets/images/rainy.png', fit: BoxFit.cover,);
      } 
      break;
      case "fog": {
        return Image.asset('assets/images/foog.png', fit: BoxFit.cover,);
      } 
      break;
      case "cloud": {
        return Image.asset('assets/images/cloudy-1.png', fit: BoxFit.cover,);
      } 
      break;
      case "cloudly_day": {
        return Image.asset('assets/images/cloudy-3.png', fit: BoxFit.cover,);
      } 
      break;
      case "cloudly_night": {
        return Image.asset('assets/images/cloudy-2.png', fit: BoxFit.cover,);
      } 
      break;
      default: {
        if(cond == "none_day" || cond == "clear_day") {
          return Image.asset('assets/images/sun.png', fit: BoxFit.cover,);
        } else {
          return Image.asset('assets/images/night.png', fit: BoxFit.cover,);
        }
      }
    }
  }
}