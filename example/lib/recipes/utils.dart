import 'package:collection/collection.dart' show IterableExtension;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:example/recipes/model.dart';

extension RecipeSearch on List<Recipe> {
  @nullable
  Recipe? recipeWithId(String id) => firstWhereOrNull((element) => element.id == id);

  List<Recipe> withIngredientId(String id) => where((element) => element.ingredientIds.contains(id)).toList();
}
