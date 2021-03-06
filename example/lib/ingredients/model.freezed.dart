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
class _$IngredientTearOff {
  const _$IngredientTearOff();

  _Ingredient call(
      {required String id, required String name, required String bigImageURL}) {
    return _Ingredient(
      id: id,
      name: name,
      bigImageURL: bigImageURL,
    );
  }
}

/// @nodoc
const $Ingredient = _$IngredientTearOff();

/// @nodoc
mixin _$Ingredient {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get bigImageURL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IngredientCopyWith<Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) then) =
      _$IngredientCopyWithImpl<$Res>;
  $Res call({String id, String name, String bigImageURL});
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res> implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._value, this._then);

  final Ingredient _value;
  // ignore: unused_field
  final $Res Function(Ingredient) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? bigImageURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bigImageURL: bigImageURL == freezed
          ? _value.bigImageURL
          : bigImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IngredientCopyWith<$Res> implements $IngredientCopyWith<$Res> {
  factory _$IngredientCopyWith(
          _Ingredient value, $Res Function(_Ingredient) then) =
      __$IngredientCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, String bigImageURL});
}

/// @nodoc
class __$IngredientCopyWithImpl<$Res> extends _$IngredientCopyWithImpl<$Res>
    implements _$IngredientCopyWith<$Res> {
  __$IngredientCopyWithImpl(
      _Ingredient _value, $Res Function(_Ingredient) _then)
      : super(_value, (v) => _then(v as _Ingredient));

  @override
  _Ingredient get _value => super._value as _Ingredient;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? bigImageURL = freezed,
  }) {
    return _then(_Ingredient(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bigImageURL: bigImageURL == freezed
          ? _value.bigImageURL
          : bigImageURL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
class _$_Ingredient implements _Ingredient {
  const _$_Ingredient(
      {required this.id, required this.name, required this.bigImageURL});

  @override
  final String id;
  @override
  final String name;
  @override
  final String bigImageURL;

  @override
  String toString() {
    return 'Ingredient(id: $id, name: $name, bigImageURL: $bigImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ingredient &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.bigImageURL, bigImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.bigImageURL, bigImageURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(bigImageURL);

  @JsonKey(ignore: true)
  @override
  _$IngredientCopyWith<_Ingredient> get copyWith =>
      __$IngredientCopyWithImpl<_Ingredient>(this, _$identity);
}

abstract class _Ingredient implements Ingredient {
  const factory _Ingredient(
      {required String id,
      required String name,
      required String bigImageURL}) = _$_Ingredient;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get bigImageURL => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IngredientCopyWith<_Ingredient> get copyWith =>
      throw _privateConstructorUsedError;
}
