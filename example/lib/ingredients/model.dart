import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class Ingredient with _$Ingredient {
  const factory Ingredient({
    @required String id,
    @required String name,
    @required String bigImageURL,
  }) = _Ingredient;
}
