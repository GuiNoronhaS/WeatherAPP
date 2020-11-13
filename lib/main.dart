import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weatherApp/components/widgets/SearchBar.dart';

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

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    final appbar = AppBar(
      title: Text("Weather App"),
    );
    final availableHeight = MediaQuery.of(context).size.height -
        appbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: appbar,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SearchBar(),
        ],
      ),
    );
  }
}