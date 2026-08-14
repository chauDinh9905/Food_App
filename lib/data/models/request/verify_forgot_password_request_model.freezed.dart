// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_forgot_password_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyForgotPasswordRequestModel {

@JsonKey(name: 'username') String get username;@JsonKey(name: 'employeeCode') String get employeeCode;
/// Create a copy of VerifyForgotPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyForgotPasswordRequestModelCopyWith<VerifyForgotPasswordRequestModel> get copyWith => _$VerifyForgotPasswordRequestModelCopyWithImpl<VerifyForgotPasswordRequestModel>(this as VerifyForgotPasswordRequestModel, _$identity);

  /// Serializes this VerifyForgotPasswordRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyForgotPasswordRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,employeeCode);

@override
String toString() {
  return 'VerifyForgotPasswordRequestModel(username: $username, employeeCode: $employeeCode)';
}


}

/// @nodoc
abstract mixin class $VerifyForgotPasswordRequestModelCopyWith<$Res>  {
  factory $VerifyForgotPasswordRequestModelCopyWith(VerifyForgotPasswordRequestModel value, $Res Function(VerifyForgotPasswordRequestModel) _then) = _$VerifyForgotPasswordRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'username') String username,@JsonKey(name: 'employeeCode') String employeeCode
});




}
/// @nodoc
class _$VerifyForgotPasswordRequestModelCopyWithImpl<$Res>
    implements $VerifyForgotPasswordRequestModelCopyWith<$Res> {
  _$VerifyForgotPasswordRequestModelCopyWithImpl(this._self, this._then);

  final VerifyForgotPasswordRequestModel _self;
  final $Res Function(VerifyForgotPasswordRequestModel) _then;

/// Create a copy of VerifyForgotPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? employeeCode = null,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyForgotPasswordRequestModel].
extension VerifyForgotPasswordRequestModelPatterns on VerifyForgotPasswordRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyForgotPasswordRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyForgotPasswordRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyForgotPasswordRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'employeeCode')  String employeeCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequestModel() when $default != null:
return $default(_that.username,_that.employeeCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'employeeCode')  String employeeCode)  $default,) {final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequestModel():
return $default(_that.username,_that.employeeCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'employeeCode')  String employeeCode)?  $default,) {final _that = this;
switch (_that) {
case _VerifyForgotPasswordRequestModel() when $default != null:
return $default(_that.username,_that.employeeCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyForgotPasswordRequestModel implements VerifyForgotPasswordRequestModel {
  const _VerifyForgotPasswordRequestModel({@JsonKey(name: 'username') required this.username, @JsonKey(name: 'employeeCode') required this.employeeCode});
  factory _VerifyForgotPasswordRequestModel.fromJson(Map<String, dynamic> json) => _$VerifyForgotPasswordRequestModelFromJson(json);

@override@JsonKey(name: 'username') final  String username;
@override@JsonKey(name: 'employeeCode') final  String employeeCode;

/// Create a copy of VerifyForgotPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyForgotPasswordRequestModelCopyWith<_VerifyForgotPasswordRequestModel> get copyWith => __$VerifyForgotPasswordRequestModelCopyWithImpl<_VerifyForgotPasswordRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyForgotPasswordRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyForgotPasswordRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,employeeCode);

@override
String toString() {
  return 'VerifyForgotPasswordRequestModel(username: $username, employeeCode: $employeeCode)';
}


}

/// @nodoc
abstract mixin class _$VerifyForgotPasswordRequestModelCopyWith<$Res> implements $VerifyForgotPasswordRequestModelCopyWith<$Res> {
  factory _$VerifyForgotPasswordRequestModelCopyWith(_VerifyForgotPasswordRequestModel value, $Res Function(_VerifyForgotPasswordRequestModel) _then) = __$VerifyForgotPasswordRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'username') String username,@JsonKey(name: 'employeeCode') String employeeCode
});




}
/// @nodoc
class __$VerifyForgotPasswordRequestModelCopyWithImpl<$Res>
    implements _$VerifyForgotPasswordRequestModelCopyWith<$Res> {
  __$VerifyForgotPasswordRequestModelCopyWithImpl(this._self, this._then);

  final _VerifyForgotPasswordRequestModel _self;
  final $Res Function(_VerifyForgotPasswordRequestModel) _then;

/// Create a copy of VerifyForgotPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? employeeCode = null,}) {
  return _then(_VerifyForgotPasswordRequestModel(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
