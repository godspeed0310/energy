// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Charge _$ChargeFromJson(Map<String, dynamic> json) => Charge(
      chargeId: json['chargeId'] as String? ?? '',
      location: json['location'] as String? ?? '',
      status: $enumDecodeNullable(_$ChargeStatusEnumMap, json['status']) ??
          ChargeStatus.invalid,
    );

Map<String, dynamic> _$ChargeToJson(Charge instance) => <String, dynamic>{
      'chargeId': instance.chargeId,
      'location': instance.location,
      'status': _$ChargeStatusEnumMap[instance.status],
    };

const _$ChargeStatusEnumMap = {
  ChargeStatus.charging: 'charging',
  ChargeStatus.pending: 'pending',
  ChargeStatus.completed: 'completed',
  ChargeStatus.invalid: 'invalid',
};
