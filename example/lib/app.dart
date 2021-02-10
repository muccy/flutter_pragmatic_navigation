import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:example/app_sections/model.dart';
import 'package:example/ingredients/provider.dart';
import 'package:example/ingredients/utils.dart';
import 'package:example/recipes/provider.dart';
import 'package:example/recipes/utils.dart';
import 'package:example/routing/delegate.dart';
import 'package:example/routing/parser.dart';
import 'package:example/routing/stack.dart';

class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Builder(
        builder: (context) => MaterialApp.router(
          routerDelegate: MainRouterDelegate(stack: context.read(navigationStackProvider)),
          routeInformationParser: MainRouterInformationParser(
            isValidIngredientId: (id) => id != null && context.read(ingredientsProvider).ingredientWithId(id) != null,
            isValidRecipeId: (id) => id != null && context.read(recipesProvider).recipeWithId(id) != null,
          ),
        ),
      ),
    );
  }
}

final navigationStackProvider = ChangeNotifierProvider((ref) => NavigationStack([
      NavigationStackItem.appSection(id: AppSection.ingredients().id),
    ]));
