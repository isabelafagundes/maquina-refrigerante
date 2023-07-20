import 'package:json_annotation/json_annotation.dart';
import 'package:maquina_refrigerante/domain/finalizadora.dart';
import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/tipo_pagamento.dart';

part 'finalizadora.dto.g.dart';

@JsonSerializable()
class FinalizadoraDto {
  int tipo;
  double valor;
  int quantidade;

  FinalizadoraDto(this.tipo, this.valor, this.quantidade);

  Finalizadora paraDomain() {
    Finalizadora finalizadora = Finalizadora.criar(
      FormaPagamento.carregar(
        TipoPagamento.values[tipo],
        valor,
      ),
    );
    return finalizadora;
  }

  Map<String, dynamic> toJson() => _$FinalizadoraDtoToJson(this);

  factory FinalizadoraDto.fromJson(Map<String, dynamic> json) {
    return _$FinalizadoraDtoFromJson(json);
  }

}
