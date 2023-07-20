// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_cupom.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItemCupomDto _$ItemCupomDtoFromJson(Map<String, dynamic> json) => ItemCupomDto(
      json['descricao'] as String,
      json['quantidade'] as int,
      (json['valorUnitario'] as num).toDouble(),
    );

Map<String, dynamic> _$ItemCupomDtoToJson(ItemCupomDto instance) =>
    <String, dynamic>{
      'descricao': instance.descricao,
      'quantidade': instance.quantidade,
      'valorUnitario': instance.valorUnitario,
    };
