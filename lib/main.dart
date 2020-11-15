import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weatherApp/components/widgets/ForecastCard.dart';
import 'package:weatherApp/components/widgets/ForecastDay.dart';
import 'package:weatherApp/components/widgets/SearchBar.dart';
import 'package:weatherApp/model/FuturasPrevisoes.dart';
import 'package:weatherApp/model/Previsao.dart';

import 'components/theme/appTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: defaultTheme,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<FuturasPrevisoes> teste = [
    FuturasPrevisoes(
        condicao: "none_day",
        data: "teste",
        descricao: "gteste",
        tempMax: 22,
        tempMin: 11),
    FuturasPrevisoes(
        condicao: "none_night",
        data: "teste",
        descricao: "gteste",
        tempMax: 22,
        tempMin: 11),
    FuturasPrevisoes(
        condicao: "fog",
        data: "teste",
        descricao: "gteste",
        tempMax: 22,
        tempMin: 11),
    FuturasPrevisoes(
        condicao: "hail",
        data: "teste",
        descricao: "gteste",
        tempMax: 22,
        tempMin: 11),
    FuturasPrevisoes(
        condicao: "rain",
        data: "rain",
        descricao: "gteste",
        tempMax: 22,
        tempMin: 11),
    FuturasPrevisoes(
        condicao: "cloudly_night",
        data: "cloudly_night",
        descricao: "gteste",
        tempMax: 22,
        tempMin: 11),
  ];

  Previsao testeG = new Previsao(
    city: "testett",
    condition: "fog",
    date: "teste",
    description: "testec",
    humidity: 99,
    sunrise: "testess",
    sunset: "none_day",
    temp: 77,
    time: "none_dasssy",
    previsoesSemana: [
      FuturasPrevisoes(
          condicao: "none_day",
          data: "teste",
          descricao: "gteste",
          tempMax: 22,
          tempMin: 11),
      FuturasPrevisoes(
          condicao: "none_night",
          data: "teste",
          descricao: "gteste",
          tempMax: 22,
          tempMin: 11),
      FuturasPrevisoes(
          condicao: "fog",
          data: "teste",
          descricao: "gteste",
          tempMax: 22,
          tempMin: 11),
      FuturasPrevisoes(
          condicao: "hail",
          data: "teste",
          descricao: "gteste",
          tempMax: 22,
          tempMin: 11),
      FuturasPrevisoes(
          condicao: "rain",
          data: "rain",
          descricao: "gteste",
          tempMax: 22,
          tempMin: 11),
      FuturasPrevisoes(
          condicao: "cloudly_night",
          data: "cloudly_night",
          descricao: "gteste",
          tempMax: 22,
          tempMin: 11),
    ],
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    final appbar = AppBar(
      title: Text("Weather APP"),
      centerTitle: true,
      backgroundColor: Colors.lightBlue,
    );
    final availableHeight = MediaQuery.of(context).size.height -
        appbar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    final availableWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: availableHeight,
            maxWidth: availableWidth,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5),
                width: availableWidth * 0.97,
                child: ForecastCard(teste),
              ),
              Container(
                margin: EdgeInsets.all(5),
                height: availableHeight * 0.55,
                width: availableWidth * 0.97,
                child: ForecastDay(testeG),
              ),
              Container(
                margin: EdgeInsets.all(5),
                width: availableWidth * 0.97,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SearchBar(),
                  ),
                ),
              ),
              Spacer(),
              Container(
                child: Text(
                  "Credits: Icons made by iconixar from www.flaticon.com",
                  style: defaultTheme.textTheme.subtitle2,
                  //style: TextStyle(fontFamily: 'Lato-Regular',fontWeight: FontWeight.w300,fontSize: 12),
                ),
              ),
              SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
