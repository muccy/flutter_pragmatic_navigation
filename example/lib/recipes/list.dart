import 'package:example/recipes/repo.dart';
import 'package:example/routing/stack.dart';
import 'package:flutter/material.dart';
import 'package:example/routing/stack_item.dart';

class Recipes extends StatelessWidget {
  const Recipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
      itemBuilder: (context, index) {
        final recipe = allRecipes[index];
        return ListTile(
          title: Text(recipe.name),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            AppNavigationStack.instance.push(NavigationStackItem.recipe(id: recipe.id));
          },
        );
      },
      separatorBuilder: (context, index) => Divider(height: 0),
      itemCount: allRecipes.length,
    ));
  }
}
