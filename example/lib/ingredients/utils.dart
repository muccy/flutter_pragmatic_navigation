import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:example/ingredients/model.dart';

extension IngredientSearch on List<Ingredient> {
  @nullable
  Ingredient? ingredientWithId(String id) => firstWhereOrNull((element) => element.id == id);
}
