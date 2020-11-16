import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final Function(String cidade) request;

  SearchBar(this.request);

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      keyboardType: TextInputType.text,
      onSubmitted: request,
      decoration: InputDecoration(
        labelText: 'Digite a cidade a ser pesquisada',
        labelStyle: Theme.of(context).textTheme.headline6,
        hintText: 'Exemplo: Florianópolis',
        hintStyle: Theme.of(context).textTheme.subtitle1,
        border: InputBorder.none,
      ),
    );
  }
}
