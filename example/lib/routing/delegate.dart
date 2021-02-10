import 'package:example/app_sections/widget.dart';
import 'package:example/ingredients/detail.dart';
import 'package:example/ingredients/provider.dart';
import 'package:example/ingredients/utils.dart';
import 'package:example/recipes/detail.dart';
import 'package:example/recipes/provider.dart';
import 'package:example/recipes/utils.dart';
import 'package:example/routing/not_found.dart';
import 'package:example/routing/stack_item.dart';
import 'package:flutter/material.dart';

import 'package:pragmatic_navigation/pragmatic_navigation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainRouterDelegate extends NavigationStackRouterDelegate<NavigationStackItem> {
  MainRouterDelegate({@required NavigationStack<NavigationStackItem> stack}) : super(stack: stack);

  @override
  List<Page> pages({BuildContext context}) => stack
      .mapItems((item, index) => item.when(
            notFound: (pathSegments) => MaterialPage(child: NotFound()),
            appSection: (id) => MaterialPage(
              key: ValueKey("AppSectionsPage"),
              child: AppSections(selectedSectionId: id),
            ),
            ingredient: (id) {
              final ingredient = id == null ? null : context.read(ingredientsProvider).ingredientWithId(id);
              return MaterialPage(
                key: ValueKey("IngredientDetail_$index"),
                child: IngredientDetail(ingredient: ingredient),
              );
            },
            recipe: (id) {
              final recipe = id == null ? null : context.read(recipesProvider).recipeWithId(id);
              return MaterialPage(
                key: ValueKey("RecipeDetail_$index"),
                child: RecipeDetail(recipe: recipe),
              );
            },
          ))
      .toList();
}
