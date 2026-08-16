// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_order_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CancelOrderResponseModel {

 int get status; String get message;
/// Create a copy of CancelOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CancelOrderResponseModelCopyWith<CancelOrderResponseModel> get copyWith => _$CancelOrderResponseModelCopyWithImpl<CancelOrderResponseModel>(this as CancelOrderResponseModel, _$identity);

  /// Serializes this CancelOrderResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CancelOrderResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'CancelOrderResponseModel(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $CancelOrderResponseModelCopyWith<$Res>  {
  factory $CancelOrderResponseModelCopyWith(CancelOrderResponseModel value, $Res Function(CancelOrderResponseModel) _then) = _$CancelOrderResponseModelCopyWithImpl;
@useResult
$Res call({
 int status, String message
});




}
/// @nodoc
class _$CancelOrderResponseModelCopyWithImpl<$Res>
    implements $CancelOrderResponseModelCopyWith<$Res> {
  _$CancelOrderResponseModelCopyWithImpl(this._self, this._then);

  final CancelOrderResponseModel _self;
  final $Res Function(CancelOrderResponseModel) _then;

/// Create a copy of CancelOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,}) {
  return _then(CancelOrderResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CancelOrderResponseModel].
extension CancelOrderResponseModelPatterns on CancelOrderResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CancelOrderResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CancelOrderResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CancelOrderResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _CancelOrderResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CancelOrderResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _CancelOrderResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CancelOrderResponseModel() when $default != null:
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  String message)  $default,) {final _that = this;
switch (_that) {
case _CancelOrderResponseModel():
return $default(_that.status,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  String message)?  $default,) {final _that = this;
switch (_that) {
case _CancelOrderResponseModel() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CancelOrderResponseModel implements CancelOrderResponseModel {
  const _CancelOrderResponseModel({required this.status, required this.message});
  factory _CancelOrderResponseModel.fromJson(Map<String, dynamic> json) => _$CancelOrderResponseModelFromJson(json);

@override final  int status;
@override final  String message;

/// Create a copy of CancelOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CancelOrderResponseModelCopyWith<_CancelOrderResponseModel> get copyWith => __$CancelOrderResponseModelCopyWithImpl<_CancelOrderResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CancelOrderResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CancelOrderResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'CancelOrderResponseModel(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$CancelOrderResponseModelCopyWith<$Res> implements $CancelOrderResponseModelCopyWith<$Res> {
  factory _$CancelOrderResponseModelCopyWith(_CancelOrderResponseModel value, $Res Function(_CancelOrderResponseModel) _then) = __$CancelOrderResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int status, String message
});




}
/// @nodoc
class __$CancelOrderResponseModelCopyWithImpl<$Res>
    implements _$CancelOrderResponseModelCopyWith<$Res> {
  __$CancelOrderResponseModelCopyWithImpl(this._self, this._then);

  final _CancelOrderResponseModel _self;
  final $Res Function(_CancelOrderResponseModel) _then;

/// Create a copy of CancelOrderResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,}) {
  return _then(_CancelOrderResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
