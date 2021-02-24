import 'package:example/ingredients/repo.dart';
import 'package:example/routing/stack.dart';
import 'package:flutter/material.dart';
import 'package:example/routing/stack_item.dart';

class Ingredients extends StatelessWidget {
  const Ingredients({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
      itemBuilder: (_, index) {
        final ingredient = allIngredients[index];
        return ListTile(
          title: Text(ingredient.name),
          trailing: Icon(Icons.chevron_right),
          onTap: () {
            AppNavigationStack.instance.push(NavigationStackItem.ingredient(id: ingredient.id));
          },
        );
      },
      separatorBuilder: (context, index) => Divider(height: 0),
      itemCount: allIngredients.length,
    ));
  }
}
