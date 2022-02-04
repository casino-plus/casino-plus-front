import 'package:freezed_annotation/freezed_annotation.dart';
part 'symbol_pocket.freezed.dart';
part 'symbol_pocket.g.dart';

@freezed
class SymbolPocket with _$SymbolPocket {
  const SymbolPocket._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory SymbolPocket({
    required String? symbolId,
    required int count,
  }) = _SymbolPocket;

  factory SymbolPocket.fromJson(Map<String, dynamic> json) =>
      _$SymbolPocketFromJson(json);
}
