import 'package:flutter/material.dart';
import 'package:maquina_refrigerante/domain/tipo_embalagem.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/utils/conversao_para_real.utils.dart';

class BtnRefrigerantesWidget extends StatelessWidget {
  const BtnRefrigerantesWidget(
      {Key? key,
      required this.nome,
      required this.embalagem,
      required this.urlImagem,
      required this.preco,
      required this.quantidade,
      required this.onTap})
      : super(key: key);
  final String nome;
  final TipoEmbalagem embalagem;
  final String urlImagem;
  final double preco;
  final int quantidade;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Center(
          child: SizedBox(
            height: 125,
            width: 105,
            child: GestureDetector(
              onTap: onTap,
              child: ElevatedButton(
                onPressed: onTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          kPaddingPadrao * 5, kPaddingPadrao * 7, kPaddingPadrao * 5, kPaddingPadrao),
                      child: Image.asset(urlImagem, height: 40),
                    ),
                    Column(
                      children: [
                        Text(nome,
                            style: const TextStyle(
                              color: kCorFonte,
                            ),
                            textAlign: TextAlign.center),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 1,
          right: 18,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: kPaddingPadrao * 1.75),
            decoration: BoxDecoration(
              color: kCorPreco,
              borderRadius: BorderRadius.circular(kBorderRadiusPadrao),
            ),
            child: Text(
              ConversaoParaRealUtils.conversaoParaReal(preco),
              style: const TextStyle(color: kCorFonte),
            ),
          ),
        ),
        if (quantidade > 0)
          Positioned(
            top: -3,
            left: 15,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: kPaddingPadrao / 2, horizontal: kPaddingPadrao * 3),
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
      ],
    );
  }
}
