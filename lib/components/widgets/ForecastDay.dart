import 'package:flutter/material.dart';
import 'package:weatherApp/model/Previsao.dart';

class ForecastDay extends StatelessWidget {
  final Previsao today;

  ForecastDay(this.today);

  @override
  Widget build(BuildContext context) {
    final availableWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 5,
      child: Column(
        children: [
          SizedBox(height: 10),
          Text('${today.city}, ${today.date}'),
          Flexible(
            fit: FlexFit.tight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${today.temp}°', style: TextStyle(fontSize:35),),
                Container(
                  height: 150,
                  width: 150,
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 3,
                  ),
                  child: _retornaImage(today.condition),
                ),
              ],
            ),
          ),
          Text('${today.description}'),
          Container(
            width: availableWidth,
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Row(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 3,
                        ),
                        child: Image.asset(
                          'assets/images/humidity.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('${today.humidity} %'),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 3,
                        ),
                        child: Image.asset(
                          'assets/images/sunrise.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('${today.sunrise}'),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 3,
                        ),
                        child: Image.asset(
                          'assets/images/sunset.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text('${today.sunset}'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Text('Horario Atualizado: ${today.time}'),
          SizedBox(height: 15),
        ],
      ),
    );
  }

  _retornaImage(String cond) {
    switch (cond) {
      case "storm":
        {
          return Image.asset(
            'assets/images/storm.png',
            fit: BoxFit.cover,
          );
        }
        break;
      case "snow":
        {
          return Image.asset(
            'assets/images/snowy.png',
            fit: BoxFit.cover,
          );
        }
        break;
      case "hail":
        {
          return Image.asset(
            'assets/images/hail.png',
            fit: BoxFit.cover,
          );
        }
        break;
      case "rain":
        {
          return Image.asset(
            'assets/images/rainy.png',
            fit: BoxFit.cover,
          );
        }
        break;
      case "fog":
        {
          return Image.asset(
            'assets/images/foog.png',
            fit: BoxFit.cover,
          );
        }
        break;
      case "cloud":
        {
          return Image.asset(
            'assets/images/cloudy-1.png',
            fit: BoxFit.cover,
          );
        }
        break;
      case "cloudly_day":
        {
          return Image.asset(
            'assets/images/cloudy-3.png',
            fit: BoxFit.cover,
          );
        }
        break;
      case "cloudly_night":
        {
          return Image.asset(
            'assets/images/cloudy-2.png',
            fit: BoxFit.cover,
          );
        }
        break;
      default:
        {
          if (cond == "none_day" || cond == "clear_day") {
            return Image.asset(
              'assets/images/sun.png',
              fit: BoxFit.cover,
            );
          } else {
            //none_night or clear_night
            return Image.asset(
              'assets/images/night.png',
              fit: BoxFit.cover,
            );
          }
        }
    }
  }
}
