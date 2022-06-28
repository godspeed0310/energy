import 'package:json_annotation/json_annotation.dart';
part 'charge.g.dart';

enum ChargeStatus { charging, pending, completed, invalid }

@JsonSerializable()
class Charge {
  final String chargeId;
  final String location;
  final ChargeStatus status;

  Charge({
    this.chargeId = '',
    this.location = '',
    this.status = ChargeStatus.invalid,
  });

  factory Charge.fromJson(Map<String, dynamic> json) => _$ChargeFromJson(json);

  Map<String, dynamic> toJson() => _$ChargeToJson(this);
}
