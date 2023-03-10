import 'package:flutter/material.dart';
import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/card_frases_registradora.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/list_refrigerantes_selecionados.widget.dart';
import 'package:maquina_refrigerante_flutter/interfaces/widgets/refrigerante_selecionado.widget.dart';
import 'package:maquina_refrigerante_flutter/utils/obter_imagem.utils.dart';

class CardRegistradoraWidget extends StatelessWidget {
  const CardRegistradoraWidget({Key? key, required this.cupom, required this.refrigerantes, required this.cor})
      : super(key: key);
  final Cupom cupom;
  final List<Refrigerante> refrigerantes;
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 335,
      child: Column(
        children: [
          ListRefrigerantesSelecionados(
            quantidade: cupom.itens.length,
            builder: (context, i) => RefrigeranteSelecionadoWidget(
                nome: cupom.itens[i].descricao,
                embalagem: refrigerantes[i].tipo,
                urlImagem: ObterImagemUtil.obterImagem(i, refrigerantes),
                preco: cupom.itens[i].valorUnitario,
                quantidade: cupom.itens[i].quantidade),
          ),
          const Spacer(),
          CardFrasesRegistradoraWidget(
            total: cupom.calcularValorTotal(),
            faltante: cupom.calcularFaltante(),
            troco: cupom.calcularTroco(),
            cor: cor,
          ),
        ],
      ),
    );
  }
}
