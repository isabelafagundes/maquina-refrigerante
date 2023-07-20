// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forma_pagamento.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormaPagamentoDto _$FormaPagamentoDtoFromJson(Map<String, dynamic> json) =>
    FormaPagamentoDto(
      json['tipo'] as int,
      (json['valor'] as num).toDouble(),
    );

Map<String, dynamic> _$FormaPagamentoDtoToJson(FormaPagamentoDto instance) =>
    <String, dynamic>{
      'tipo': instance.tipo,
      'valor': instance.valor,
    };
