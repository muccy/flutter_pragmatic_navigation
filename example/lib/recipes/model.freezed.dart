// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$RecipeTearOff {
  const _$RecipeTearOff();

// ignore: unused_element
  _Recipe call(
      {required String id,
      required String name,
      required List<String> ingredientIds}) {
    return _Recipe(
      id: id,
      name: name,
      ingredientIds: ingredientIds,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Recipe = _$RecipeTearOff();

/// @nodoc
mixin _$Recipe {
  String get id;
  String get name;
  List<String> get ingredientIds;

  @JsonKey(ignore: true)
  $RecipeCopyWith<Recipe> get copyWith;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res>;
  $Res call({String? id, String? name, List<String>? ingredientIds});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  final Recipe _value;
  // ignore: unused_field
  final $Res Function(Recipe?) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ingredientIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String?,
      name: name == freezed ? _value.name : name as String?,
      ingredientIds: ingredientIds == freezed
          ? _value.ingredientIds
          : ingredientIds as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) then) =
      __$RecipeCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name, List<String>? ingredientIds});
}

/// @nodoc
class __$RecipeCopyWithImpl<$Res> extends _$RecipeCopyWithImpl<$Res>
    implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(_Recipe _value, $Res Function(_Recipe) _then)
      : super(_value, (v) => _then(v as _Recipe));

  @override
  _Recipe get _value => super._value as _Recipe;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? ingredientIds = freezed,
  }) {
    return _then(_Recipe(
      id: id == freezed ? _value.id : (id as String?)!,
      name: name == freezed ? _value.name : (name as String?)!,
      ingredientIds: ingredientIds == freezed
          ? _value.ingredientIds
          : (ingredientIds as List<String>?)!,
    ));
  }
}

/// @nodoc
class _$_Recipe implements _Recipe {
  const _$_Recipe(
      {required this.id, required this.name, required this.ingredientIds})
      : assert(id != null),
        assert(name != null),
        assert(ingredientIds != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final List<String> ingredientIds;

  @override
  String toString() {
    return 'Recipe(id: $id, name: $name, ingredientIds: $ingredientIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Recipe &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.ingredientIds, ingredientIds) ||
                const DeepCollectionEquality()
                    .equals(other.ingredientIds, ingredientIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(ingredientIds);

  @JsonKey(ignore: true)
  @override
  _$RecipeCopyWith<_Recipe> get copyWith =>
      __$RecipeCopyWithImpl<_Recipe>(this, _$identity);
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {required String id,
      required String name,
      required List<String> ingredientIds}) = _$_Recipe;

  @override
  String get id;
  @override
  String get name;
  @override
  List<String> get ingredientIds;
  @override
  @JsonKey(ignore: true)
  _$RecipeCopyWith<_Recipe> get copyWith;
}
