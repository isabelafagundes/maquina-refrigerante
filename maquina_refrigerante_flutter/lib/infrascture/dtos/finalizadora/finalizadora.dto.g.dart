// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finalizadora.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinalizadoraDto _$FinalizadoraDtoFromJson(Map<String, dynamic> json) =>
    FinalizadoraDto(
      json['tipo'] as int,
      (json['valor'] as num).toDouble(),
      json['quantidade'] as int,
    );

Map<String, dynamic> _$FinalizadoraDtoToJson(FinalizadoraDto instance) =>
    <String, dynamic>{
      'tipo': instance.tipo,
      'valor': instance.valor,
      'quantidade': instance.quantidade,
    };
