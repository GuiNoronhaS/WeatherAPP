import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weatherApp/components/widgets/ForecastCard.dart';
import 'package:weatherApp/components/widgets/SearchBar.dart';
import 'package:weatherApp/model/FuturasPrevisoes.dart';

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

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    final appbar = AppBar(
      title: Text("Weather App"),
      centerTitle: true,
      backgroundColor: Colors.lightBlue,
    );
    final availableHeight = MediaQuery.of(context).size.height -
        appbar.preferredSize.height -
        MediaQuery.of(context).padding.top;
    final availableWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: appbar,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            width: availableWidth * 0.99,
            child: ForecastCard(teste),
          ),
          Container(
            margin: EdgeInsets.all(30),
            width: availableWidth * 0.8,
            child: SearchBar(),
          ),
          Spacer(),
          Container(
            child: Text(
              "Icon Credits: Icons made by iconixar from www.flaticon.com",
              style: defaultTheme.textTheme.subtitle2,
              //style: TextStyle(fontFamily: 'Lato-Regular',fontWeight: FontWeight.w300,fontSize: 12),
            ),
          ),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
