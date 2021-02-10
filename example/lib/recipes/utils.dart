import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:example/recipes/model.dart';

extension RecipeSearch on List<Recipe> {
  @nullable
  Recipe recipeWithId(String id) => firstWhere((element) => element.id == id, orElse: () => null);

  List<Recipe> recipesWithIngredientId(String id) => where((element) => element.ingredientIds.contains(id)).toList();
}
