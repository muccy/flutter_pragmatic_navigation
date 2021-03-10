import 'package:freezed_annotation/freezed_annotation.dart';

part 'stack_item.freezed.dart';

@freezed
abstract class NavigationStackItem with _$NavigationStackItem {
  const factory NavigationStackItem.notFound({required List<String> pathSegments}) = NavigationStackItemNotFound;
  const factory NavigationStackItem.appSection({required String id}) = NavigationStackItemAppSection;
  const factory NavigationStackItem.ingredient({required String id}) = NavigationStackItemIngredient;
  const factory NavigationStackItem.recipe({required String id}) = NavigationStackItemRecipe;
}
