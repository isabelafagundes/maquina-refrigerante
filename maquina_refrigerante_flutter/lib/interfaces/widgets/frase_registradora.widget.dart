import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';

class FrasesResgistradoraWidget extends StatelessWidget {
  const FrasesResgistradoraWidget({Key? key, required this.statusPagamento, required this.valor, required this.cor})
      : super(key: key);
  final String statusPagamento;
  final String valor;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kMarginPadrao * 2),
      padding: const EdgeInsets.only(bottom: kPaddingPadrao),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            statusPagamento,
            style: TextStyle(fontSize: 18, color: cor, fontFamily: 'Baloo'),
          ),
          const Spacer(),
          Text(
            valor,
            style: TextStyle(fontSize: 18, color: cor),
          ),
        ],
      ),
    );
  }
}
