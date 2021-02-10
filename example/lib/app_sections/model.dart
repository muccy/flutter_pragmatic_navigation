import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

@freezed
abstract class AppSection implements _$AppSection {
  const AppSection._();
  const factory AppSection.ingredients() = _Ingredients;
  const factory AppSection.recipes() = _Recipes;

  String get id => when(
        ingredients: () => "ingredients",
        recipes: () => "recipes",
      );
  String get name => when(
        ingredients: () => "Ingredients",
        recipes: () => "Recipes",
      );
  IconData get icon => when(
        ingredients: () => Icons.category,
        recipes: () => Icons.menu_book,
      );

  static const validIds = {"ingredients", "recipes"};
}
