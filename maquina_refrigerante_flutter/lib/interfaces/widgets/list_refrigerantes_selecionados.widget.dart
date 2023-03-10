import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';

class ListRefrigerantesSelecionados extends StatelessWidget {
  final IndexedWidgetBuilder builder;
  final int quantidade;

  const ListRefrigerantesSelecionados({
    Key? key,
    required this.builder,
    required this.quantidade,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 450,
          height: 200,
          padding: const EdgeInsets.only(top: kPaddingPadrao * 2),
          child: ListView.builder(
            itemCount: quantidade,
            itemBuilder: (context, i) => builder(context, i),
          ),
        ),
      ],
    );
  }
}
