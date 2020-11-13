import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      keyboardType: TextInputType.text,
      onSubmitted: (_) => {},
      decoration: InputDecoration(
        labelText: 'Digite a cidade a ser pesquisada',
        labelStyle: ThemeData().textTheme.headline6,
        border: InputBorder.none
      ),
    );
  }


}