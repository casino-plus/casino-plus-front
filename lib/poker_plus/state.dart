//
//
//

import 'side.dart';
import 'wheel.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'state.freezed.dart';
part 'state.g.dart';

@freezed
class State with _$State {
  const State._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory State({
    required String id,
    required List<int> deck,
    required int dealerStep,
    required List<Side> sides,
    required Wheel wheel,
  }) = _State;

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);
}
