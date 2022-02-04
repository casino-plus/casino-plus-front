// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_State _$$_StateFromJson(Map<String, dynamic> json) => _$_State(
      id: json['id'] as String,
      deck: (json['deck'] as List<dynamic>).map((e) => e as int).toList(),
      dealerStep: json['dealer_step'] as int,
      sides: (json['sides'] as List<dynamic>)
          .map((e) => Side.fromJson(e as Map<String, dynamic>))
          .toList(),
      wheel: Wheel.fromJson(json['wheel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StateToJson(_$_State instance) => <String, dynamic>{
      'id': instance.id,
      'deck': instance.deck,
      'dealer_step': instance.dealerStep,
      'sides': instance.sides,
      'wheel': instance.wheel,
    };
