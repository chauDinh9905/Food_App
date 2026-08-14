// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_forgot_password_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyForgotPasswordDataModel {

@JsonKey(name: 'fullname') String get fullname;
/// Create a copy of VerifyForgotPasswordDataModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyForgotPasswordDataModelCopyWith<VerifyForgotPasswordDataModel> get copyWith => _$VerifyForgotPasswordDataModelCopyWithImpl<VerifyForgotPasswordDataModel>(this as VerifyForgotPasswordDataModel, _$identity);

  /// Serializes this VerifyForgotPasswordDataModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyForgotPasswordDataModel&&(identical(other.fullname, fullname) || other.fullname == fullname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullname);

@override
String toString() {
  return 'VerifyForgotPasswordDataModel(fullname: $fullname)';
}


}

/// @nodoc
abstract mixin class $VerifyForgotPasswordDataModelCopyWith<$Res>  {
  factory $VerifyForgotPasswordDataModelCopyWith(VerifyForgotPasswordDataModel value, $Res Function(VerifyForgotPasswordDataModel) _then) = _$VerifyForgotPasswordDataModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'fullname') String fullname
});




}
/// @nodoc
class _$VerifyForgotPasswordDataModelCopyWithImpl<$Res>
    implements $VerifyForgotPasswordDataModelCopyWith<$Res> {
  _$VerifyForgotPasswordDataModelCopyWithImpl(this._self, this._then);

  final VerifyForgotPasswordDataModel _self;
  final $Res Function(VerifyForgotPasswordDataModel) _then;

/// Create a copy of VerifyForgotPasswordDataModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fullname = null,}) {
  return _then(_self.copyWith(
fullname: null == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyForgotPasswordDataModel].
extension VerifyForgotPasswordDataModelPatterns on VerifyForgotPasswordDataModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyForgotPasswordDataModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyForgotPasswordDataModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyForgotPasswordDataModel value)  $default,){
final _that = this;
switch (_that) {
case _VerifyForgotPasswordDataModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyForgotPasswordDataModel value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyForgotPasswordDataModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'fullname')  String fullname)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyForgotPasswordDataModel() when $default != null:
return $default(_that.fullname);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'fullname')  String fullname)  $default,) {final _that = this;
switch (_that) {
case _VerifyForgotPasswordDataModel():
return $default(_that.fullname);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'fullname')  String fullname)?  $default,) {final _that = this;
switch (_that) {
case _VerifyForgotPasswordDataModel() when $default != null:
return $default(_that.fullname);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyForgotPasswordDataModel implements VerifyForgotPasswordDataModel {
  const _VerifyForgotPasswordDataModel({@JsonKey(name: 'fullname') required this.fullname});
  factory _VerifyForgotPasswordDataModel.fromJson(Map<String, dynamic> json) => _$VerifyForgotPasswordDataModelFromJson(json);

@override@JsonKey(name: 'fullname') final  String fullname;

/// Create a copy of VerifyForgotPasswordDataModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyForgotPasswordDataModelCopyWith<_VerifyForgotPasswordDataModel> get copyWith => __$VerifyForgotPasswordDataModelCopyWithImpl<_VerifyForgotPasswordDataModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyForgotPasswordDataModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyForgotPasswordDataModel&&(identical(other.fullname, fullname) || other.fullname == fullname));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fullname);

@override
String toString() {
  return 'VerifyForgotPasswordDataModel(fullname: $fullname)';
}


}

/// @nodoc
abstract mixin class _$VerifyForgotPasswordDataModelCopyWith<$Res> implements $VerifyForgotPasswordDataModelCopyWith<$Res> {
  factory _$VerifyForgotPasswordDataModelCopyWith(_VerifyForgotPasswordDataModel value, $Res Function(_VerifyForgotPasswordDataModel) _then) = __$VerifyForgotPasswordDataModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'fullname') String fullname
});




}
/// @nodoc
class __$VerifyForgotPasswordDataModelCopyWithImpl<$Res>
    implements _$VerifyForgotPasswordDataModelCopyWith<$Res> {
  __$VerifyForgotPasswordDataModelCopyWithImpl(this._self, this._then);

  final _VerifyForgotPasswordDataModel _self;
  final $Res Function(_VerifyForgotPasswordDataModel) _then;

/// Create a copy of VerifyForgotPasswordDataModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fullname = null,}) {
  return _then(_VerifyForgotPasswordDataModel(
fullname: null == fullname ? _self.fullname : fullname // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
