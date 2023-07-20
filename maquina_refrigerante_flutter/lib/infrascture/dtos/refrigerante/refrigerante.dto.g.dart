// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refrigerante.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefrigeranteDto _$RefrigeranteDtoFromJson(Map<String, dynamic> json) =>
    RefrigeranteDto(
      json['descricao'] as String,
      (json['valorUnitario'] as num).toDouble(),
      json['tipo'] as int,
    );

Map<String, dynamic> _$RefrigeranteDtoToJson(RefrigeranteDto instance) =>
    <String, dynamic>{
      'descricao': instance.descricao,
      'valorUnitario': instance.valorUnitario,
      'tipo': instance.tipo,
    };
