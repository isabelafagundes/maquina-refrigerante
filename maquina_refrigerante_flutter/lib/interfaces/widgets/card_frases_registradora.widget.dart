import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/frase_registradora.widget.dart';
import 'package:maquina_refrigerante_flutter/utils/conversao_para_real.utils.dart';

class CardFrasesRegistradoraWidget extends StatelessWidget {
  const CardFrasesRegistradoraWidget(
      {Key? key, required this.total, required this.faltante, required this.troco, required this.cor})
      : super(key: key);
  final double total;
  final double faltante;
  final double troco;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kMarginPadrao),
      child: Column(
        children: [
          FrasesResgistradoraWidget(
              statusPagamento: "Total", valor: ConversaoParaRealUtils.conversaoParaReal(total), cor: kCorFonte),
          FrasesResgistradoraWidget(
              statusPagamento: "Falta", valor: ConversaoParaRealUtils.conversaoParaReal(faltante), cor: cor),
          FrasesResgistradoraWidget(
              statusPagamento: "Troco", valor: ConversaoParaRealUtils.conversaoParaReal(troco), cor: cor),
        ],
      ),
    );
  }
}
