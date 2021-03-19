import 'package:collection/collection.dart' show IterableExtension;
import 'package:example/ingredients/model.dart';

extension IngredientSearch on List<Ingredient> {
  Ingredient? ingredientWithId(String id) => firstWhereOrNull((element) => element.id == id);
}
