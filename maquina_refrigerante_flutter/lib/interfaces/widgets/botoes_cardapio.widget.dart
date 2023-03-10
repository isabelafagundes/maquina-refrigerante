import 'package:flutter/material.dart';
import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/btn_limpar.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/btn_pagamento.widget.dart';

class BotoesCardapioWidget extends StatelessWidget {
  const BotoesCardapioWidget(
      {Key? key, required this.cupom, required this.aoClicarLimpar, required this.aoClicarPagamento})
      : super(key: key);
  final Cupom cupom;
  final Function() aoClicarLimpar;
  final Function() aoClicarPagamento;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(width: 15),
        if (cupom.itens.isNotEmpty) BtnLimparWidget(aoClicarLimpar: aoClicarLimpar),
        const Spacer(),
        BtnPagamentoWidget(aoClicarPagamento: aoClicarPagamento),
        const SizedBox(width: 15),
      ],
    );
  }
}
