import 'package:maquina_refrigerante/domain/tipo_embalagem.dart';

class Refrigerante {
  final String descricao;
  final double valorUnitario;
  final TipoEmbalagem tipo;

  Refrigerante._(this.descricao, this.valorUnitario, this.tipo);

  factory Refrigerante.carregar(String descricao, double valorUnitario, TipoEmbalagem tipo) {
    return Refrigerante._(descricao, valorUnitario, tipo);
  }
}
