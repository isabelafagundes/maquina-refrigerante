import 'package:json_annotation/json_annotation.dart';
import 'package:maquina_refrigerante/domain/refrigerante.dart';
import 'package:maquina_refrigerante/domain/tipo_embalagem.dart';

part 'refrigerante.dto.g.dart';

@JsonSerializable()
class RefrigeranteDto {
  String descricao;
  double valorUnitario;
  int tipo;

  RefrigeranteDto(this.descricao, this.valorUnitario, this.tipo);

  Refrigerante paraDomain() {
    Refrigerante refrigerante = Refrigerante.carregar(
      descricao,
      valorUnitario,
      TipoEmbalagem.values[tipo],
    );
    return refrigerante;
  }

  Map<String, dynamic> toJson() => _$RefrigeranteDtoToJson(this);

  factory RefrigeranteDto.fromJson(Map<String, dynamic> json) {
    return _$RefrigeranteDtoFromJson(json);
  }
}
