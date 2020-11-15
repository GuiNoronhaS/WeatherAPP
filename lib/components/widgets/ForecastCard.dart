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
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ForecastBar(listaPrev[1]),
            ForecastBar(listaPrev[2]),
            ForecastBar(listaPrev[3]),
            ForecastBar(listaPrev[4]),
            ForecastBar(listaPrev[5]),
            ForecastBar(listaPrev[6]),
          ],
        ),
      ),
    );
  }
}
