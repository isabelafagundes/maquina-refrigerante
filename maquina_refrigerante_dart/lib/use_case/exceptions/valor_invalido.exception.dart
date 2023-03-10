import 'package:maquina_refrigerante/use_case/exceptions/erro_customizado.dart';

class ValorInvalido implements ErroCustomizado {

  @override
  String toString() {
    return "Valor invalido!!";
  }

}
