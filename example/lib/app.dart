import 'package:example/ingredients/repo.dart';
import 'package:example/recipes/repo.dart';
import 'package:flutter/material.dart';

import 'package:example/routing/delegate.dart';
import 'package:example/routing/parser.dart';
import 'package:example/routing/stack.dart';
import 'package:example/ingredients/utils.dart';
import 'package:example/recipes/utils.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: MainRouterDelegate(stack: AppNavigationStack.instance),
      routeInformationParser: MainRouterInformationParser(
        isValidIngredientId: (id) => id != null && allIngredients.ingredientWithId(id) != null,
        isValidRecipeId: (id) => id != null && allRecipes.recipeWithId(id) != null,
      ),
    );
  }
}
