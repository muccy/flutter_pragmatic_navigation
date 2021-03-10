import 'package:collection/collection.dart' show IterableExtension;
import 'package:example/recipes/model.dart';

extension RecipeSearch on List<Recipe> {
  Recipe? recipeWithId(String id) => firstWhereOrNull((element) => element.id == id);

  List<Recipe> withIngredientId(String id) => where((element) => element.ingredientIds.contains(id)).toList();
}
