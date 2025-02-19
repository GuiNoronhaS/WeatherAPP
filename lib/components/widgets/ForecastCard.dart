import 'package:flutter/material.dart';
import 'package:weatherApp/components/widgets/ForecastBar.dart';
import 'package:weatherApp/model/FuturasPrevisoes.dart';

class ForecastCard extends StatelessWidget {
  final List<FuturasPrevisoes> listaPrev;

  ForecastCard(
    this.listaPrev,
  );
  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child:  Row(
          children: [ 
            Flexible(
              fit: FlexFit.tight,
              child: ForecastBar(listaPrev[0]),
            ),
            SizedBox(width: 5,),
            Flexible(
              fit: FlexFit.tight,
              child: ForecastBar(listaPrev[1]),
            ),
            SizedBox(width: 5,),
            Flexible(
              fit: FlexFit.tight,
              child: ForecastBar(listaPrev[2]),
            ),
            SizedBox(width: 5,),
            Flexible(
              fit: FlexFit.tight,
              child: ForecastBar(listaPrev[3]),
            ),
            SizedBox(width: 5,),
            Flexible(
              fit: FlexFit.tight,
              child: ForecastBar(listaPrev[4]),
            ),
            SizedBox(width: 5,),
            Flexible(
              fit: FlexFit.tight,
              child: ForecastBar(listaPrev[5]),
            ),
          ]),
        ),
    );
  }
}
