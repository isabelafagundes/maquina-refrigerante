import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/utils/conversao_para_real.utils.dart';

class BtnFormaPagamentoWidget extends StatelessWidget {
  const BtnFormaPagamentoWidget({Key? key, required this.valor, required this.onTap}) : super(key: key);
  final double valor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kMarginPadrao),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kBorderRadiusPadrao))),
        child: Text(
          ConversaoParaRealUtils.conversaoParaReal(valor),
          style: const TextStyle(color: kCorFonte, fontSize: 16),
        ),
      ),
    );
  }
}
