import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:example/app.dart';
import 'package:example/ingredients/provider.dart';
import 'package:example/recipes/model.dart';
import 'package:example/routing/stack_item.dart';

class RecipeDetail extends ConsumerWidget {
  final Recipe recipe;
  const RecipeDetail({Key key, @required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final ingredients = watch(ingredientsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text("Ingredients", style: Theme.of(context).textTheme.headline6),
              ),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final ingredient = ingredients[index];
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(ingredient.name),
                    trailing: Icon(
                      Icons.chevron_right,
                    ),
                    onTap: () {
                      final ingredient = ingredients[index];
                      context.read(navigationStackProvider).push(NavigationStackItem.ingredient(id: ingredient.id));
                    },
                  );
                },
                separatorBuilder: (context, index) => Divider(height: 0),
                itemCount: ingredients.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
