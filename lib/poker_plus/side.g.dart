// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'side.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Side _$$_SideFromJson(Map<String, dynamic> json) => _$_Side(
      seat: json['seat'] as int,
      playerStep: json['player_step'] as int,
      chips: json['chips'] as int,
      handCardIds: (json['hand_card_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      betLevel: json['bet_level'] as int?,
      putCardId: json['put_card_id'] as int?,
      lastCombo: json['last_combo'] as int,
    );

Map<String, dynamic> _$$_SideToJson(_$_Side instance) => <String, dynamic>{
      'seat': instance.seat,
      'player_step': instance.playerStep,
      'chips': instance.chips,
      'hand_card_ids': instance.handCardIds,
      'bet_level': instance.betLevel,
      'put_card_id': instance.putCardId,
      'last_combo': instance.lastCombo,
    };
