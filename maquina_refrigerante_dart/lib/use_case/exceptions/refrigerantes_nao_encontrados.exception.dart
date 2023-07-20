import 'package:maquina_refrigerante/use_case/exceptions/erro_customizado.dart';

class RefrigerantesNaoEncontradosException implements ErroCustomizado {
  @override
  String toString() {
    return "Não foi possível encontrar os refrigerantes!!";
  }
}