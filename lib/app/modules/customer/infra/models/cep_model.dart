import '../../domain/entities/cep_entity.dart';

import 'package:json_annotation/json_annotation.dart';

part 'cep_model.g.dart';

@JsonSerializable()
class CepModel extends CepEntity {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;
  final String ibge;
  final String gia;
  final String ddd;
  final String siafi;

  CepModel({
    required this.cep,
    required this.logradouro,
    required this.complemento,
    required this.bairro,
    required this.localidade,
    required this.uf,
    required this.ibge,
    required this.gia,
    required this.ddd,
    required this.siafi,
  }) : super(
          cep,
          logradouro,
          complemento,
          bairro,
          localidade,
          uf,
          ibge,
          gia,
          ddd,
          siafi,
        );

  factory CepModel.fromJson(Map<String, dynamic> json) => _$CepModelFromJson(json);

  Map<String, dynamic> toJson() => _$CepModelToJson(this);
}
