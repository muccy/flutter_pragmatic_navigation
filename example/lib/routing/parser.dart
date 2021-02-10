import 'package:example/app_sections/model.dart';
import 'package:example/routing/stack_item.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:pragmatic_navigation/pragmatic_navigation.dart';

class MainRouterInformationParser extends NavigationStackRouterInformationParser<NavigationStackItem> {
  final bool Function(String id) isValidIngredientId;
  final bool Function(String id) isValidRecipeId;

  MainRouterInformationParser({@required this.isValidIngredientId, @required this.isValidRecipeId})
      : super(pathSegmentsChunkStartSize: 2, pathSegmentsChunkMaxSize: 2);

  @override
  Future<NavigationStackItem> itemForPathSegments(List<String> pathSegments) async {
    final key = pathSegments[0];
    final value = pathSegments[1];

    NavigationStackItem item;
    switch (key) {
      case _Keys.appSection:
        if (AppSection.validIds.contains(value)) {
          item = NavigationStackItem.appSection(id: value);
        }
        break;
      case _Keys.ingredient:
        if (isValidIngredientId(value)) {
          item = NavigationStackItem.ingredient(id: value);
        }
        break;
      case _Keys.recipe:
        if (isValidRecipeId(value)) {
          item = NavigationStackItem.recipe(id: value);
        }
        break;
    }

    return item ?? NavigationStackItem.notFound();
  }

  @override
  List<String> pathSegmentsForItem(NavigationStackItem item) => item.when(
        notFound: () => [],
        appSection: (id) => [_Keys.appSection, id],
        ingredient: (id) => [_Keys.ingredient, id],
        recipe: (id) => [_Keys.recipe, id],
      );

  @override
  Future<List<NavigationStackItem>> itemsForRouteInformation(RouteInformation routeInformation) async {
    final items = await super.itemsForRouteInformation(routeInformation);

    if (items.isEmpty || items.first is! NavigationStackItemAppSection) {
      final fallback = NavigationStackItem.appSection(id: AppSection.ingredients().id);
      if (items.isNotEmpty && items.first is NavigationStackItemNotFound) {
        items[0] = fallback;
      } else {
        items.insert(0, fallback);
      }
    }

    return items;
  }
}

abstract class _Keys {
  _Keys._();
  static const appSection = "section";
  static const ingredient = "ingredient";
  static const recipe = "recipe";
}
