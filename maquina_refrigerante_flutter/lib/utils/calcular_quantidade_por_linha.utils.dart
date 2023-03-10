import 'package:flutter/material.dart';

class CalcularQuantidadePorLinhaUtils {
  static int calcularQuantidadeDeCardsPorLinha(BuildContext context) {
    if (MediaQuery.of(context).size.width > 400) {
      return 3;
    } else if (MediaQuery.of(context).size.width > 200) {
      return 2;
    }
    return 1;
  }
}
