import 'package:flutter/material.dart';
import 'package:example/app.dart';
import 'package:example/ingredients/model.dart';
import 'package:example/recipes/provider.dart';
import 'package:example/recipes/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:example/routing/stack.dart';

class IngredientDetail extends ConsumerWidget {
  final Ingredient ingredient;

  const IngredientDetail({Key key, @required this.ingredient}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final relatedRecipes = watch(recipesProvider).recipesWithIngredientId(ingredient.id);

    return Scaffold(
      appBar: AppBar(title: Text(ingredient.name)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("Related Recipes", style: Theme.of(context).textTheme.headline6),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final recipe = relatedRecipes[index];
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(recipe.name),
                    trailing: Icon(
                      Icons.chevron_right,
                    ),
                    onTap: () {
                      context.read(navigationStackProvider).push(NavigationStackItem.recipe(id: recipe.id));
                    },
                  );
                },
                separatorBuilder: (context, index) => Divider(height: 0),
                itemCount: relatedRecipes.length,
              ),
              Image.network(ingredient.bigImageURL),
            ],
          ),
        ),
      ),
    );
  }
}