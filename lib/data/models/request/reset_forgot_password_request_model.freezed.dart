// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_forgot_password_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResetForgotPasswordRequestModel {

@JsonKey(name: 'username') String get username;@JsonKey(name: 'employeeCode') String get employeeCode;@JsonKey(name: 'newPassword') String get newPassword;
/// Create a copy of ResetForgotPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetForgotPasswordRequestModelCopyWith<ResetForgotPasswordRequestModel> get copyWith => _$ResetForgotPasswordRequestModelCopyWithImpl<ResetForgotPasswordRequestModel>(this as ResetForgotPasswordRequestModel, _$identity);

  /// Serializes this ResetForgotPasswordRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetForgotPasswordRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,employeeCode,newPassword);

@override
String toString() {
  return 'ResetForgotPasswordRequestModel(username: $username, employeeCode: $employeeCode, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ResetForgotPasswordRequestModelCopyWith<$Res>  {
  factory $ResetForgotPasswordRequestModelCopyWith(ResetForgotPasswordRequestModel value, $Res Function(ResetForgotPasswordRequestModel) _then) = _$ResetForgotPasswordRequestModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'username') String username,@JsonKey(name: 'employeeCode') String employeeCode,@JsonKey(name: 'newPassword') String newPassword
});




}
/// @nodoc
class _$ResetForgotPasswordRequestModelCopyWithImpl<$Res>
    implements $ResetForgotPasswordRequestModelCopyWith<$Res> {
  _$ResetForgotPasswordRequestModelCopyWithImpl(this._self, this._then);

  final ResetForgotPasswordRequestModel _self;
  final $Res Function(ResetForgotPasswordRequestModel) _then;

/// Create a copy of ResetForgotPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? employeeCode = null,Object? newPassword = null,}) {
  return _then(ResetForgotPasswordRequestModel(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetForgotPasswordRequestModel].
extension ResetForgotPasswordRequestModelPatterns on ResetForgotPasswordRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetForgotPasswordRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetForgotPasswordRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetForgotPasswordRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _ResetForgotPasswordRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetForgotPasswordRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _ResetForgotPasswordRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'employeeCode')  String employeeCode, @JsonKey(name: 'newPassword')  String newPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetForgotPasswordRequestModel() when $default != null:
return $default(_that.username,_that.employeeCode,_that.newPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'employeeCode')  String employeeCode, @JsonKey(name: 'newPassword')  String newPassword)  $default,) {final _that = this;
switch (_that) {
case _ResetForgotPasswordRequestModel():
return $default(_that.username,_that.employeeCode,_that.newPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'username')  String username, @JsonKey(name: 'employeeCode')  String employeeCode, @JsonKey(name: 'newPassword')  String newPassword)?  $default,) {final _that = this;
switch (_that) {
case _ResetForgotPasswordRequestModel() when $default != null:
return $default(_that.username,_that.employeeCode,_that.newPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResetForgotPasswordRequestModel implements ResetForgotPasswordRequestModel {
  const _ResetForgotPasswordRequestModel({@JsonKey(name: 'username') required this.username, @JsonKey(name: 'employeeCode') required this.employeeCode, @JsonKey(name: 'newPassword') required this.newPassword});
  factory _ResetForgotPasswordRequestModel.fromJson(Map<String, dynamic> json) => _$ResetForgotPasswordRequestModelFromJson(json);

@override@JsonKey(name: 'username') final  String username;
@override@JsonKey(name: 'employeeCode') final  String employeeCode;
@override@JsonKey(name: 'newPassword') final  String newPassword;

/// Create a copy of ResetForgotPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetForgotPasswordRequestModelCopyWith<_ResetForgotPasswordRequestModel> get copyWith => __$ResetForgotPasswordRequestModelCopyWithImpl<_ResetForgotPasswordRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResetForgotPasswordRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetForgotPasswordRequestModel&&(identical(other.username, username) || other.username == username)&&(identical(other.employeeCode, employeeCode) || other.employeeCode == employeeCode)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,username,employeeCode,newPassword);

@override
String toString() {
  return 'ResetForgotPasswordRequestModel(username: $username, employeeCode: $employeeCode, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$ResetForgotPasswordRequestModelCopyWith<$Res> implements $ResetForgotPasswordRequestModelCopyWith<$Res> {
  factory _$ResetForgotPasswordRequestModelCopyWith(_ResetForgotPasswordRequestModel value, $Res Function(_ResetForgotPasswordRequestModel) _then) = __$ResetForgotPasswordRequestModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'username') String username,@JsonKey(name: 'employeeCode') String employeeCode,@JsonKey(name: 'newPassword') String newPassword
});




}
/// @nodoc
class __$ResetForgotPasswordRequestModelCopyWithImpl<$Res>
    implements _$ResetForgotPasswordRequestModelCopyWith<$Res> {
  __$ResetForgotPasswordRequestModelCopyWithImpl(this._self, this._then);

  final _ResetForgotPasswordRequestModel _self;
  final $Res Function(_ResetForgotPasswordRequestModel) _then;

/// Create a copy of ResetForgotPasswordRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? employeeCode = null,Object? newPassword = null,}) {
  return _then(_ResetForgotPasswordRequestModel(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,employeeCode: null == employeeCode ? _self.employeeCode : employeeCode // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
