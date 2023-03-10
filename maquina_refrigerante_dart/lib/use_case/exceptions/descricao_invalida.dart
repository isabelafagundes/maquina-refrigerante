import 'package:maquina_refrigerante/use_case/exceptions/erro_customizado.dart';

class DescricaoInvalida implements ErroCustomizado {

  @override
  String toString() {
    return "A descricao e invalida!!";
  }

}