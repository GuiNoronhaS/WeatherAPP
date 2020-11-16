import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weatherApp/components/api/httpRequest.dart';
import 'package:weatherApp/components/widgets/ForecastCard.dart';
import 'package:weatherApp/components/widgets/ForecastDay.dart';
import 'package:weatherApp/components/widgets/SearchBar.dart';
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
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Previsao nova;
  bool isLoading = false;
  bool isReady = false;

  _request(String cidade) {
    if(cidade.isNotEmpty) {
      setState(() {
      isLoading = true;
      print(isLoading);
    });
    getRequest(cidade).then((value) {
      setState(() {
        isLoading = false;
        isReady = true;
        nova = value;
        print(isLoading);
      });
    });
    }
  }

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
          child: isLoading ? Center(child: Text('Loading, Please Wait')) : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              isReady
                  ? Container(
                      margin: EdgeInsets.all(5),
                      width: availableWidth * 0.97,
                      child: ForecastCard(nova.previsoesSemana),
                    )
                  : SizedBox(height: 50),
              isReady
                  ? Container(
                      margin: EdgeInsets.all(5),
                      height: availableHeight * 0.55,
                      width: availableWidth * 0.97,
                      child: ForecastDay(nova),
                    )
                  : Container(
                      height: availableHeight * 0.55,
                      width: availableWidth * 0.97,
                      margin: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 3,
                      ),
                      child: Image.asset(
                        'assets/images/waiting.png',
                      ),
                    ),
              Container(
                margin: EdgeInsets.all(5),
                width: availableWidth * 0.97,
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SearchBar(_request),
                  ),
                ),
              ),
              Spacer(),
              Container(
                child: Text(
                  "Credits: Icons made by iconixar from www.flaticon.com",
                  style: defaultTheme.textTheme.subtitle2,
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
