// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CreateOrderResponseModel {

 int get status; String get message;@JsonKey(name: 'orderId') int get orderId;
/// Create a copy of CreateOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateOrderResponseModelCopyWith<CreateOrderResponseModel> get copyWith => _$CreateOrderResponseModelCopyWithImpl<CreateOrderResponseModel>(this as CreateOrderResponseModel, _$identity);

  /// Serializes this CreateOrderResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateOrderResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.orderId, orderId) || other.orderId == orderId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,orderId);

@override
String toString() {
  return 'CreateOrderResponseModel(status: $status, message: $message, orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class $CreateOrderResponseModelCopyWith<$Res>  {
  factory $CreateOrderResponseModelCopyWith(CreateOrderResponseModel value, $Res Function(CreateOrderResponseModel) _then) = _$CreateOrderResponseModelCopyWithImpl;
@useResult
$Res call({
 int status, String message,@JsonKey(name: 'orderId') int orderId
});




}
/// @nodoc
class _$CreateOrderResponseModelCopyWithImpl<$Res>
    implements $CreateOrderResponseModelCopyWith<$Res> {
  _$CreateOrderResponseModelCopyWithImpl(this._self, this._then);

  final CreateOrderResponseModel _self;
  final $Res Function(CreateOrderResponseModel) _then;

/// Create a copy of CreateOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? orderId = null,}) {
  return _then(CreateOrderResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateOrderResponseModel].
extension CreateOrderResponseModelPatterns on CreateOrderResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateOrderResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateOrderResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateOrderResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CreateOrderResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateOrderResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CreateOrderResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String message, @JsonKey(name: 'orderId')  int orderId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateOrderResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.orderId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String message, @JsonKey(name: 'orderId')  int orderId)  $default,) {final _that = this;
switch (_that) {
case _CreateOrderResponseModel():
return $default(_that.status,_that.message,_that.orderId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String message, @JsonKey(name: 'orderId')  int orderId)?  $default,) {final _that = this;
switch (_that) {
case _CreateOrderResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.orderId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateOrderResponseModel implements CreateOrderResponseModel {
  const _CreateOrderResponseModel({required this.status, required this.message, @JsonKey(name: 'orderId') required this.orderId});
  factory _CreateOrderResponseModel.fromJson(Map<String, dynamic> json) => _$CreateOrderResponseModelFromJson(json);

@override final  int status;
@override final  String message;
@override@JsonKey(name: 'orderId') final  int orderId;

/// Create a copy of CreateOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateOrderResponseModelCopyWith<_CreateOrderResponseModel> get copyWith => __$CreateOrderResponseModelCopyWithImpl<_CreateOrderResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateOrderResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateOrderResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.orderId, orderId) || other.orderId == orderId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,orderId);

@override
String toString() {
  return 'CreateOrderResponseModel(status: $status, message: $message, orderId: $orderId)';
}


}

/// @nodoc
abstract mixin class _$CreateOrderResponseModelCopyWith<$Res> implements $CreateOrderResponseModelCopyWith<$Res> {
  factory _$CreateOrderResponseModelCopyWith(_CreateOrderResponseModel value, $Res Function(_CreateOrderResponseModel) _then) = __$CreateOrderResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int status, String message,@JsonKey(name: 'orderId') int orderId
});




}
/// @nodoc
class __$CreateOrderResponseModelCopyWithImpl<$Res>
    implements _$CreateOrderResponseModelCopyWith<$Res> {
  __$CreateOrderResponseModelCopyWithImpl(this._self, this._then);

  final _CreateOrderResponseModel _self;
  final $Res Function(_CreateOrderResponseModel) _then;

/// Create a copy of CreateOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? orderId = null,}) {
  return _then(_CreateOrderResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
