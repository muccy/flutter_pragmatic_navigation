// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stack_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigationStackItemTearOff {
  const _$NavigationStackItemTearOff();

  NavigationStackItemNotFound notFound({required List<String> pathSegments}) {
    return NavigationStackItemNotFound(
      pathSegments: pathSegments,
    );
  }

  NavigationStackItemAppSection appSection({required String id}) {
    return NavigationStackItemAppSection(
      id: id,
    );
  }

  NavigationStackItemIngredient ingredient({required String id}) {
    return NavigationStackItemIngredient(
      id: id,
    );
  }

  NavigationStackItemRecipe recipe({required String id}) {
    return NavigationStackItemRecipe(
      id: id,
    );
  }
}

/// @nodoc
const $NavigationStackItem = _$NavigationStackItemTearOff();

/// @nodoc
mixin _$NavigationStackItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> pathSegments) notFound,
    required TResult Function(String id) appSection,
    required TResult Function(String id) ingredient,
    required TResult Function(String id) recipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> pathSegments)? notFound,
    TResult Function(String id)? appSection,
    TResult Function(String id)? ingredient,
    TResult Function(String id)? recipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationStackItemNotFound value) notFound,
    required TResult Function(NavigationStackItemAppSection value) appSection,
    required TResult Function(NavigationStackItemIngredient value) ingredient,
    required TResult Function(NavigationStackItemRecipe value) recipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationStackItemNotFound value)? notFound,
    TResult Function(NavigationStackItemAppSection value)? appSection,
    TResult Function(NavigationStackItemIngredient value)? ingredient,
    TResult Function(NavigationStackItemRecipe value)? recipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStackItemCopyWith<$Res> {
  factory $NavigationStackItemCopyWith(
          NavigationStackItem value, $Res Function(NavigationStackItem) then) =
      _$NavigationStackItemCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigationStackItemCopyWithImpl<$Res>
    implements $NavigationStackItemCopyWith<$Res> {
  _$NavigationStackItemCopyWithImpl(this._value, this._then);

  final NavigationStackItem _value;
  // ignore: unused_field
  final $Res Function(NavigationStackItem) _then;
}

/// @nodoc
abstract class $NavigationStackItemNotFoundCopyWith<$Res> {
  factory $NavigationStackItemNotFoundCopyWith(
          NavigationStackItemNotFound value,
          $Res Function(NavigationStackItemNotFound) then) =
      _$NavigationStackItemNotFoundCopyWithImpl<$Res>;
  $Res call({List<String> pathSegments});
}

/// @nodoc
class _$NavigationStackItemNotFoundCopyWithImpl<$Res>
    extends _$NavigationStackItemCopyWithImpl<$Res>
    implements $NavigationStackItemNotFoundCopyWith<$Res> {
  _$NavigationStackItemNotFoundCopyWithImpl(NavigationStackItemNotFound _value,
      $Res Function(NavigationStackItemNotFound) _then)
      : super(_value, (v) => _then(v as NavigationStackItemNotFound));

  @override
  NavigationStackItemNotFound get _value =>
      super._value as NavigationStackItemNotFound;

  @override
  $Res call({
    Object? pathSegments = freezed,
  }) {
    return _then(NavigationStackItemNotFound(
      pathSegments: pathSegments == freezed
          ? _value.pathSegments
          : pathSegments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
class _$NavigationStackItemNotFound implements NavigationStackItemNotFound {
  const _$NavigationStackItemNotFound({required this.pathSegments});

  @override
  final List<String> pathSegments;

  @override
  String toString() {
    return 'NavigationStackItem.notFound(pathSegments: $pathSegments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationStackItemNotFound &&
            (identical(other.pathSegments, pathSegments) ||
                const DeepCollectionEquality()
                    .equals(other.pathSegments, pathSegments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(pathSegments);

  @JsonKey(ignore: true)
  @override
  $NavigationStackItemNotFoundCopyWith<NavigationStackItemNotFound>
      get copyWith => _$NavigationStackItemNotFoundCopyWithImpl<
          NavigationStackItemNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> pathSegments) notFound,
    required TResult Function(String id) appSection,
    required TResult Function(String id) ingredient,
    required TResult Function(String id) recipe,
  }) {
    return notFound(pathSegments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> pathSegments)? notFound,
    TResult Function(String id)? appSection,
    TResult Function(String id)? ingredient,
    TResult Function(String id)? recipe,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(pathSegments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationStackItemNotFound value) notFound,
    required TResult Function(NavigationStackItemAppSection value) appSection,
    required TResult Function(NavigationStackItemIngredient value) ingredient,
    required TResult Function(NavigationStackItemRecipe value) recipe,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationStackItemNotFound value)? notFound,
    TResult Function(NavigationStackItemAppSection value)? appSection,
    TResult Function(NavigationStackItemIngredient value)? ingredient,
    TResult Function(NavigationStackItemRecipe value)? recipe,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NavigationStackItemNotFound implements NavigationStackItem {
  const factory NavigationStackItemNotFound(
      {required List<String> pathSegments}) = _$NavigationStackItemNotFound;

  List<String> get pathSegments => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigationStackItemNotFoundCopyWith<NavigationStackItemNotFound>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStackItemAppSectionCopyWith<$Res> {
  factory $NavigationStackItemAppSectionCopyWith(
          NavigationStackItemAppSection value,
          $Res Function(NavigationStackItemAppSection) then) =
      _$NavigationStackItemAppSectionCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$NavigationStackItemAppSectionCopyWithImpl<$Res>
    extends _$NavigationStackItemCopyWithImpl<$Res>
    implements $NavigationStackItemAppSectionCopyWith<$Res> {
  _$NavigationStackItemAppSectionCopyWithImpl(
      NavigationStackItemAppSection _value,
      $Res Function(NavigationStackItemAppSection) _then)
      : super(_value, (v) => _then(v as NavigationStackItemAppSection));

  @override
  NavigationStackItemAppSection get _value =>
      super._value as NavigationStackItemAppSection;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(NavigationStackItemAppSection(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$NavigationStackItemAppSection implements NavigationStackItemAppSection {
  const _$NavigationStackItemAppSection({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'NavigationStackItem.appSection(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationStackItemAppSection &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $NavigationStackItemAppSectionCopyWith<NavigationStackItemAppSection>
      get copyWith => _$NavigationStackItemAppSectionCopyWithImpl<
          NavigationStackItemAppSection>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> pathSegments) notFound,
    required TResult Function(String id) appSection,
    required TResult Function(String id) ingredient,
    required TResult Function(String id) recipe,
  }) {
    return appSection(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> pathSegments)? notFound,
    TResult Function(String id)? appSection,
    TResult Function(String id)? ingredient,
    TResult Function(String id)? recipe,
    required TResult orElse(),
  }) {
    if (appSection != null) {
      return appSection(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationStackItemNotFound value) notFound,
    required TResult Function(NavigationStackItemAppSection value) appSection,
    required TResult Function(NavigationStackItemIngredient value) ingredient,
    required TResult Function(NavigationStackItemRecipe value) recipe,
  }) {
    return appSection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationStackItemNotFound value)? notFound,
    TResult Function(NavigationStackItemAppSection value)? appSection,
    TResult Function(NavigationStackItemIngredient value)? ingredient,
    TResult Function(NavigationStackItemRecipe value)? recipe,
    required TResult orElse(),
  }) {
    if (appSection != null) {
      return appSection(this);
    }
    return orElse();
  }
}

abstract class NavigationStackItemAppSection implements NavigationStackItem {
  const factory NavigationStackItemAppSection({required String id}) =
      _$NavigationStackItemAppSection;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigationStackItemAppSectionCopyWith<NavigationStackItemAppSection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStackItemIngredientCopyWith<$Res> {
  factory $NavigationStackItemIngredientCopyWith(
          NavigationStackItemIngredient value,
          $Res Function(NavigationStackItemIngredient) then) =
      _$NavigationStackItemIngredientCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$NavigationStackItemIngredientCopyWithImpl<$Res>
    extends _$NavigationStackItemCopyWithImpl<$Res>
    implements $NavigationStackItemIngredientCopyWith<$Res> {
  _$NavigationStackItemIngredientCopyWithImpl(
      NavigationStackItemIngredient _value,
      $Res Function(NavigationStackItemIngredient) _then)
      : super(_value, (v) => _then(v as NavigationStackItemIngredient));

  @override
  NavigationStackItemIngredient get _value =>
      super._value as NavigationStackItemIngredient;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(NavigationStackItemIngredient(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$NavigationStackItemIngredient implements NavigationStackItemIngredient {
  const _$NavigationStackItemIngredient({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'NavigationStackItem.ingredient(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationStackItemIngredient &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $NavigationStackItemIngredientCopyWith<NavigationStackItemIngredient>
      get copyWith => _$NavigationStackItemIngredientCopyWithImpl<
          NavigationStackItemIngredient>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> pathSegments) notFound,
    required TResult Function(String id) appSection,
    required TResult Function(String id) ingredient,
    required TResult Function(String id) recipe,
  }) {
    return ingredient(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> pathSegments)? notFound,
    TResult Function(String id)? appSection,
    TResult Function(String id)? ingredient,
    TResult Function(String id)? recipe,
    required TResult orElse(),
  }) {
    if (ingredient != null) {
      return ingredient(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationStackItemNotFound value) notFound,
    required TResult Function(NavigationStackItemAppSection value) appSection,
    required TResult Function(NavigationStackItemIngredient value) ingredient,
    required TResult Function(NavigationStackItemRecipe value) recipe,
  }) {
    return ingredient(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationStackItemNotFound value)? notFound,
    TResult Function(NavigationStackItemAppSection value)? appSection,
    TResult Function(NavigationStackItemIngredient value)? ingredient,
    TResult Function(NavigationStackItemRecipe value)? recipe,
    required TResult orElse(),
  }) {
    if (ingredient != null) {
      return ingredient(this);
    }
    return orElse();
  }
}

abstract class NavigationStackItemIngredient implements NavigationStackItem {
  const factory NavigationStackItemIngredient({required String id}) =
      _$NavigationStackItemIngredient;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigationStackItemIngredientCopyWith<NavigationStackItemIngredient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStackItemRecipeCopyWith<$Res> {
  factory $NavigationStackItemRecipeCopyWith(NavigationStackItemRecipe value,
          $Res Function(NavigationStackItemRecipe) then) =
      _$NavigationStackItemRecipeCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$NavigationStackItemRecipeCopyWithImpl<$Res>
    extends _$NavigationStackItemCopyWithImpl<$Res>
    implements $NavigationStackItemRecipeCopyWith<$Res> {
  _$NavigationStackItemRecipeCopyWithImpl(NavigationStackItemRecipe _value,
      $Res Function(NavigationStackItemRecipe) _then)
      : super(_value, (v) => _then(v as NavigationStackItemRecipe));

  @override
  NavigationStackItemRecipe get _value =>
      super._value as NavigationStackItemRecipe;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(NavigationStackItemRecipe(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$NavigationStackItemRecipe implements NavigationStackItemRecipe {
  const _$NavigationStackItemRecipe({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'NavigationStackItem.recipe(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NavigationStackItemRecipe &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  $NavigationStackItemRecipeCopyWith<NavigationStackItemRecipe> get copyWith =>
      _$NavigationStackItemRecipeCopyWithImpl<NavigationStackItemRecipe>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> pathSegments) notFound,
    required TResult Function(String id) appSection,
    required TResult Function(String id) ingredient,
    required TResult Function(String id) recipe,
  }) {
    return recipe(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> pathSegments)? notFound,
    TResult Function(String id)? appSection,
    TResult Function(String id)? ingredient,
    TResult Function(String id)? recipe,
    required TResult orElse(),
  }) {
    if (recipe != null) {
      return recipe(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NavigationStackItemNotFound value) notFound,
    required TResult Function(NavigationStackItemAppSection value) appSection,
    required TResult Function(NavigationStackItemIngredient value) ingredient,
    required TResult Function(NavigationStackItemRecipe value) recipe,
  }) {
    return recipe(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NavigationStackItemNotFound value)? notFound,
    TResult Function(NavigationStackItemAppSection value)? appSection,
    TResult Function(NavigationStackItemIngredient value)? ingredient,
    TResult Function(NavigationStackItemRecipe value)? recipe,
    required TResult orElse(),
  }) {
    if (recipe != null) {
      return recipe(this);
    }
    return orElse();
  }
}

abstract class NavigationStackItemRecipe implements NavigationStackItem {
  const factory NavigationStackItemRecipe({required String id}) =
      _$NavigationStackItemRecipe;

  String get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NavigationStackItemRecipeCopyWith<NavigationStackItemRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}
