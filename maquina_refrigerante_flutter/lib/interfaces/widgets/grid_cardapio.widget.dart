import 'package:flutter/cupertino.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';
import 'package:maquina_refrigerante_flutter/utils/calcular_quantidade_por_linha.utils.dart';

class CardCardapioWidget extends StatelessWidget {
  const CardCardapioWidget({Key? key, required this.quantidade, required this.builder}) : super(key: key);
  final int quantidade;
  final IndexedWidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kMarginPadrao),
      height: 250,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: CalcularQuantidadePorLinhaUtils.calcularQuantidadeDeCardsPorLinha(context),
          mainAxisSpacing: kMarginPadrao,
          crossAxisSpacing: kMarginPadrao / 4,
          mainAxisExtent: 120,
        ),
        itemCount: quantidade,
        itemBuilder: (context, i) => builder(context, i),
      ),
    );
  }
}
