import 'package:json_annotation/json_annotation.dart';
import 'package:maquina_refrigerante/domain/cupom.dart';
import 'package:maquina_refrigerante_flutter/infrascture/dtos/finalizadora/finalizadora.dto.dart';
import 'package:maquina_refrigerante_flutter/infrascture/dtos/item_cupom_dto/item_cupom.dto.dart';

part 'cupom.dto.g.dart';

@JsonSerializable()
class CupomDto {
  int numeroCupom;
  List<ItemCupomDto> itens = [];
  List<FinalizadoraDto> finalizadoras = [];

  CupomDto(this.numeroCupom, this.itens, this.finalizadoras);

  Cupom paraDomain() {
    Cupom cupom = Cupom.criar(numeroCupom);
    return cupom;
  }

  Map<String, dynamic> toJson() => _$CupomDtoToJson(this);

  factory CupomDto.fromJson(Map<String, dynamic> json) {
    return _$CupomDtoFromJson(json);
  }
}