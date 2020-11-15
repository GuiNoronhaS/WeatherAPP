import 'package:flutter/foundation.dart';

class FuturasPrevisoes {
  final String data;
  final int tempMax;
  final int tempMin;
  final String descricao;
  final String condicao;

  FuturasPrevisoes({
    @required this.data,
    @required this.tempMax,
    @required this.tempMin,
    @required this.descricao,
    @required this.condicao,
  });

}