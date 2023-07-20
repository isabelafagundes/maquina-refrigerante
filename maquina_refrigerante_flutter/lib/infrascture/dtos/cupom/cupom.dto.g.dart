// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cupom.dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CupomDto _$CupomDtoFromJson(Map<String, dynamic> json) => CupomDto(
      json['numeroCupom'] as int,
      (json['itens'] as List<dynamic>)
          .map((e) => ItemCupomDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['finalizadoras'] as List<dynamic>)
          .map((e) => FinalizadoraDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CupomDtoToJson(CupomDto instance) => <String, dynamic>{
      'numeroCupom': instance.numeroCupom,
      'itens': instance.itens,
      'finalizadoras': instance.finalizadoras,
    };
