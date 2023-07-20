import 'package:json_annotation/json_annotation.dart';
import 'package:maquina_refrigerante/domain/item_cupom.dart';

part 'item_cupom.dto.g.dart';

@JsonSerializable()
class ItemCupomDto {
  String descricao;
  int quantidade;
  double valorUnitario;

  ItemCupomDto(this.descricao, this.quantidade, this.valorUnitario);

  static ItemCupomDto deDomain(ItemCupom itemCupom) {
    return ItemCupomDto(
      itemCupom.descricao,
      itemCupom.quantidade,
      itemCupom.valorUnitario,
    );
  }

  Map<String, dynamic> toJson() => _$ItemCupomDtoToJson(this);

  factory ItemCupomDto.fromJson(Map<String, dynamic> json) {
    return _$ItemCupomDtoFromJson(json);
  }
}
