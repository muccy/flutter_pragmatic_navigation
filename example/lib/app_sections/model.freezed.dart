// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppSectionTearOff {
  const _$AppSectionTearOff();

  _Ingredients ingredients() {
    return const _Ingredients();
  }

  _Recipes recipes() {
    return const _Recipes();
  }
}

/// @nodoc
const $AppSection = _$AppSectionTearOff();

/// @nodoc
mixin _$AppSection {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ingredients,
    required TResult Function() recipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ingredients,
    TResult Function()? recipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ingredients value) ingredients,
    required TResult Function(_Recipes value) recipes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ingredients value)? ingredients,
    TResult Function(_Recipes value)? recipes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSectionCopyWith<$Res> {
  factory $AppSectionCopyWith(
          AppSection value, $Res Function(AppSection) then) =
      _$AppSectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppSectionCopyWithImpl<$Res> implements $AppSectionCopyWith<$Res> {
  _$AppSectionCopyWithImpl(this._value, this._then);

  final AppSection _value;
  // ignore: unused_field
  final $Res Function(AppSection) _then;
}

/// @nodoc
abstract class _$IngredientsCopyWith<$Res> {
  factory _$IngredientsCopyWith(
          _Ingredients value, $Res Function(_Ingredients) then) =
      __$IngredientsCopyWithImpl<$Res>;
}

/// @nodoc
class __$IngredientsCopyWithImpl<$Res> extends _$AppSectionCopyWithImpl<$Res>
    implements _$IngredientsCopyWith<$Res> {
  __$IngredientsCopyWithImpl(
      _Ingredients _value, $Res Function(_Ingredients) _then)
      : super(_value, (v) => _then(v as _Ingredients));

  @override
  _Ingredients get _value => super._value as _Ingredients;
}

/// @nodoc
class _$_Ingredients extends _Ingredients with DiagnosticableTreeMixin {
  const _$_Ingredients() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppSection.ingredients()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AppSection.ingredients'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Ingredients);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ingredients,
    required TResult Function() recipes,
  }) {
    return ingredients();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ingredients,
    TResult Function()? recipes,
    required TResult orElse(),
  }) {
    if (ingredients != null) {
      return ingredients();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ingredients value) ingredients,
    required TResult Function(_Recipes value) recipes,
  }) {
    return ingredients(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ingredients value)? ingredients,
    TResult Function(_Recipes value)? recipes,
    required TResult orElse(),
  }) {
    if (ingredients != null) {
      return ingredients(this);
    }
    return orElse();
  }
}

abstract class _Ingredients extends AppSection {
  const factory _Ingredients() = _$_Ingredients;
  const _Ingredients._() : super._();
}

/// @nodoc
abstract class _$RecipesCopyWith<$Res> {
  factory _$RecipesCopyWith(_Recipes value, $Res Function(_Recipes) then) =
      __$RecipesCopyWithImpl<$Res>;
}

/// @nodoc
class __$RecipesCopyWithImpl<$Res> extends _$AppSectionCopyWithImpl<$Res>
    implements _$RecipesCopyWith<$Res> {
  __$RecipesCopyWithImpl(_Recipes _value, $Res Function(_Recipes) _then)
      : super(_value, (v) => _then(v as _Recipes));

  @override
  _Recipes get _value => super._value as _Recipes;
}

/// @nodoc
class _$_Recipes extends _Recipes with DiagnosticableTreeMixin {
  const _$_Recipes() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppSection.recipes()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'AppSection.recipes'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Recipes);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() ingredients,
    required TResult Function() recipes,
  }) {
    return recipes();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? ingredients,
    TResult Function()? recipes,
    required TResult orElse(),
  }) {
    if (recipes != null) {
      return recipes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Ingredients value) ingredients,
    required TResult Function(_Recipes value) recipes,
  }) {
    return recipes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ingredients value)? ingredients,
    TResult Function(_Recipes value)? recipes,
    required TResult orElse(),
  }) {
    if (recipes != null) {
      return recipes(this);
    }
    return orElse();
  }
}

abstract class _Recipes extends AppSection {
  const factory _Recipes() = _$_Recipes;
  const _Recipes._() : super._();
}
