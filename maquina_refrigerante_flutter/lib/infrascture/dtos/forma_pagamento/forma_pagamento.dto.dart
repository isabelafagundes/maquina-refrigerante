import 'package:json_annotation/json_annotation.dart';
import 'package:maquina_refrigerante/domain/forma_pagamento.dart';
import 'package:maquina_refrigerante/domain/tipo_pagamento.dart';

part 'forma_pagamento.dto.g.dart';

@JsonSerializable()
class FormaPagamentoDto {
  final int tipo;
  final double valor;

  FormaPagamentoDto(this.tipo, this.valor);

  FormaPagamento paraDomain() {
    FormaPagamento formaPagamento = FormaPagamento.carregar(
      TipoPagamento.values[tipo],
      valor,
    );
    return formaPagamento;
  }

  Map<String, dynamic> toJson() => _$FormaPagamentoDtoToJson(this);

  factory FormaPagamentoDto.fromJson(Map<String, dynamic> json) {
    return _$FormaPagamentoDtoFromJson(json);
  }
}
