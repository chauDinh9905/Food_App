// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_forgot_password_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetForgotPasswordResponseModel {

@JsonKey(name: 'status') int get status;@JsonKey(name: 'message') String get message;
/// Create a copy of ResetForgotPasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetForgotPasswordResponseModelCopyWith<ResetForgotPasswordResponseModel> get copyWith => _$ResetForgotPasswordResponseModelCopyWithImpl<ResetForgotPasswordResponseModel>(this as ResetForgotPasswordResponseModel, _$identity);

  /// Serializes this ResetForgotPasswordResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetForgotPasswordResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'ResetForgotPasswordResponseModel(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $ResetForgotPasswordResponseModelCopyWith<$Res>  {
  factory $ResetForgotPasswordResponseModelCopyWith(ResetForgotPasswordResponseModel value, $Res Function(ResetForgotPasswordResponseModel) _then) = _$ResetForgotPasswordResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') int status,@JsonKey(name: 'message') String message
});




}
/// @nodoc
class _$ResetForgotPasswordResponseModelCopyWithImpl<$Res>
    implements $ResetForgotPasswordResponseModelCopyWith<$Res> {
  _$ResetForgotPasswordResponseModelCopyWithImpl(this._self, this._then);

  final ResetForgotPasswordResponseModel _self;
  final $Res Function(ResetForgotPasswordResponseModel) _then;

/// Create a copy of ResetForgotPasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,}) {
  return _then(ResetForgotPasswordResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetForgotPasswordResponseModel].
extension ResetForgotPasswordResponseModelPatterns on ResetForgotPasswordResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetForgotPasswordResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetForgotPasswordResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetForgotPasswordResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _ResetForgotPasswordResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetForgotPasswordResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResetForgotPasswordResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  int status, @JsonKey(name: 'message')  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetForgotPasswordResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  int status, @JsonKey(name: 'message')  String message)  $default,) {final _that = this;
switch (_that) {
case _ResetForgotPasswordResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  int status, @JsonKey(name: 'message')  String message)?  $default,) {final _that = this;
switch (_that) {
case _ResetForgotPasswordResponseModel() when $default != null:
return $default(_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResetForgotPasswordResponseModel implements ResetForgotPasswordResponseModel {
  const _ResetForgotPasswordResponseModel({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'message') required this.message});
  factory _ResetForgotPasswordResponseModel.fromJson(Map<String, dynamic> json) => _$ResetForgotPasswordResponseModelFromJson(json);

@override@JsonKey(name: 'status') final  int status;
@override@JsonKey(name: 'message') final  String message;

/// Create a copy of ResetForgotPasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetForgotPasswordResponseModelCopyWith<_ResetForgotPasswordResponseModel> get copyWith => __$ResetForgotPasswordResponseModelCopyWithImpl<_ResetForgotPasswordResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResetForgotPasswordResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetForgotPasswordResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message);

@override
String toString() {
  return 'ResetForgotPasswordResponseModel(status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$ResetForgotPasswordResponseModelCopyWith<$Res> implements $ResetForgotPasswordResponseModelCopyWith<$Res> {
  factory _$ResetForgotPasswordResponseModelCopyWith(_ResetForgotPasswordResponseModel value, $Res Function(_ResetForgotPasswordResponseModel) _then) = __$ResetForgotPasswordResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') int status,@JsonKey(name: 'message') String message
});




}
/// @nodoc
class __$ResetForgotPasswordResponseModelCopyWithImpl<$Res>
    implements _$ResetForgotPasswordResponseModelCopyWith<$Res> {
  __$ResetForgotPasswordResponseModelCopyWithImpl(this._self, this._then);

  final _ResetForgotPasswordResponseModel _self;
  final $Res Function(_ResetForgotPasswordResponseModel) _then;

/// Create a copy of ResetForgotPasswordResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,}) {
  return _then(_ResetForgotPasswordResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
