import 'package:json_annotation/json_annotation.dart';
part 'base_model.g.dart';

@JsonSerializable()
class BaseModel{
  int? status;
  String? responseMessage;
  String? requestId;

  BaseModel({this.status, this.responseMessage, this.requestId});

  factory BaseModel.fromJson(Map<String, dynamic> json) => _$BaseModelFromJson(json);
  Map<String, dynamic> toJson() => _$BaseModelToJson(this);

}