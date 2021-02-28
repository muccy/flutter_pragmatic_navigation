import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class Recipe with _$Recipe {
  const factory Recipe({
    @required String id,
    @required String name,
    @required List<String> ingredientIds,
  }) = _Recipe;
}
