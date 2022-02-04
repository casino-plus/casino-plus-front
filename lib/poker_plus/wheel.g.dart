// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wheel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wheel _$$_WheelFromJson(Map<String, dynamic> json) => _$_Wheel(
      innerPartIds: (json['inner_part_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      outerPartIds: (json['outer_part_ids'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      innerOffset: json['inner_offset'] as int,
      outerOffset: json['outer_offset'] as int,
    );

Map<String, dynamic> _$$_WheelToJson(_$_Wheel instance) => <String, dynamic>{
      'inner_part_ids': instance.innerPartIds,
      'outer_part_ids': instance.outerPartIds,
      'inner_offset': instance.innerOffset,
      'outer_offset': instance.outerOffset,
    };
