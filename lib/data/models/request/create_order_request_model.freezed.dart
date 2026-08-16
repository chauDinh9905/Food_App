// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOrderRequestModel {

 int get quantity;
/// Create a copy of CreateOrderRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderRequestModelCopyWith<CreateOrderRequestModel> get copyWith => _$CreateOrderRequestModelCopyWithImpl<CreateOrderRequestModel>(this as CreateOrderRequestModel, _$identity);

  /// Serializes this CreateOrderRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderRequestModel&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'CreateOrderRequestModel(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $CreateOrderRequestModelCopyWith<$Res>  {
  factory $CreateOrderRequestModelCopyWith(CreateOrderRequestModel value, $Res Function(CreateOrderRequestModel) _then) = _$CreateOrderRequestModelCopyWithImpl;
@useResult
$Res call({
 int quantity
});




}
/// @nodoc
class _$CreateOrderRequestModelCopyWithImpl<$Res>
    implements $CreateOrderRequestModelCopyWith<$Res> {
  _$CreateOrderRequestModelCopyWithImpl(this._self, this._then);

  final CreateOrderRequestModel _self;
  final $Res Function(CreateOrderRequestModel) _then;

/// Create a copy of CreateOrderRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = null,}) {
  return _then(CreateOrderRequestModel(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateOrderRequestModel].
extension CreateOrderRequestModelPatterns on CreateOrderRequestModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderRequestModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderRequestModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderRequestModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrderRequestModel() when $default != null:
return $default(_that.quantity);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int quantity)  $default,) {final _that = this;
switch (_that) {
case _CreateOrderRequestModel():
return $default(_that.quantity);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int quantity)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrderRequestModel() when $default != null:
return $default(_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrderRequestModel implements CreateOrderRequestModel {
  const _CreateOrderRequestModel({this.quantity = 1});
  factory _CreateOrderRequestModel.fromJson(Map<String, dynamic> json) => _$CreateOrderRequestModelFromJson(json);

@override@JsonKey() final  int quantity;

/// Create a copy of CreateOrderRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderRequestModelCopyWith<_CreateOrderRequestModel> get copyWith => __$CreateOrderRequestModelCopyWithImpl<_CreateOrderRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrderRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderRequestModel&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,quantity);

@override
String toString() {
  return 'CreateOrderRequestModel(quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderRequestModelCopyWith<$Res> implements $CreateOrderRequestModelCopyWith<$Res> {
  factory _$CreateOrderRequestModelCopyWith(_CreateOrderRequestModel value, $Res Function(_CreateOrderRequestModel) _then) = __$CreateOrderRequestModelCopyWithImpl;
@override @useResult
$Res call({
 int quantity
});




}
/// @nodoc
class __$CreateOrderRequestModelCopyWithImpl<$Res>
    implements _$CreateOrderRequestModelCopyWith<$Res> {
  __$CreateOrderRequestModelCopyWithImpl(this._self, this._then);

  final _CreateOrderRequestModel _self;
  final $Res Function(_CreateOrderRequestModel) _then;

/// Create a copy of CreateOrderRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantity = null,}) {
  return _then(_CreateOrderRequestModel(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
