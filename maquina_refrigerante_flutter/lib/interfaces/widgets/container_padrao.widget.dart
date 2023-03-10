import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';

class ContainerPadraoWidget extends StatelessWidget {
  final List<Widget> children;

  const ContainerPadraoWidget({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      height: MediaQuery.of(context).size.height / 2.5,
      constraints: const BoxConstraints(minHeight: 350),
      padding: const EdgeInsets.symmetric(horizontal: kPaddingPadrao * 3, vertical: kPaddingPadrao + 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadiusPadrao),
        color: Colors.white,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0.0, 0.75),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}
