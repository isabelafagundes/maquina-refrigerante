import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';

class FraseSelecioneBebida extends StatelessWidget {
  const FraseSelecioneBebida({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 338,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Expanded(
            child: SizedBox(),
          ),
          Text(
            "Selecione uma bebida!",
            style: TextStyle(fontSize: 20, color: kCorFonte.withOpacity(0.5)),
            textAlign: TextAlign.center,
          ),
          const Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
