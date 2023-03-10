import 'package:flutter/material.dart';
import 'package:maquina_refrigerante/domain/tipo_embalagem.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/utils/conversao_para_real.utils.dart';

class RefrigeranteSelecionadoWidget extends StatelessWidget {
  const RefrigeranteSelecionadoWidget(
      {Key? key,
      required this.nome,
      required this.embalagem,
      required this.urlImagem,
      required this.preco,
      required this.quantidade})
      : super(key: key);
  final String nome;
  final TipoEmbalagem embalagem;
  final String urlImagem;
  final double preco;
  final int quantidade;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: kPaddingPadrao, horizontal: kPaddingPadrao * 2),
        margin: const EdgeInsets.symmetric(horizontal: kMarginPadrao * 2, vertical: kMarginPadrao / 2),
        decoration: BoxDecoration(
          boxShadow: kBoxShadowPadrao,
          color: Colors.white,
          borderRadius: BorderRadius.circular(kBorderRadiusPadrao / 2),
        ),
        child: ListTile(
          leading: Image.asset(urlImagem, height: 40),
          title: Text(nome, style: const TextStyle(color: kCorFonte)),
          subtitle: Text(
            ConversaoParaRealUtils.conversaoParaReal(preco),
            style: const TextStyle(fontWeight: FontWeight.bold, color: kCorFonte),
          ),
          trailing: Text(ConversaoParaRealUtils.conversaoParaReal(preco),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: kCorFonte)),
        ),
      ),
      if (quantidade > 0)
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: kPaddingPadrao, horizontal: kPaddingPadrao * 2.75),
            decoration: BoxDecoration(
              color: kCorQuantidade,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              "${quantidade}x",
              style: const TextStyle(color: kCorFonte),
            ),
          ),
        ),
    ]);
  }
}
