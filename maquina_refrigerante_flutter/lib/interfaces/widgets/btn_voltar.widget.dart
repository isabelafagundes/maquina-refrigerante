import 'package:flutter/material.dart';
import 'package:maquina_refrigerante_flutter/constants.dart';

class BtnVoltarWidget extends StatelessWidget {
  const BtnVoltarWidget({Key? key, required this.aoClicarVoltar}) : super(key: key);
  final Function() aoClicarVoltar;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: ElevatedButton(
        onPressed: aoClicarVoltar,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: kCorFundo,
          padding: const EdgeInsets.symmetric(vertical: kPaddingPadrao * 5, horizontal: kPaddingPadrao * 2),
        ),
        child: const Icon(
          Icons.chevron_left,
          color: kCorFonte,
        ),
      ),
    );
  }
}
