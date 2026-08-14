// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_info_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetUserInfoResponseModel {

@JsonKey(name: 'status') int get status;@JsonKey(name: 'message') String get message;@JsonKey(name: 'data') UserModel get data;
/// Create a copy of GetUserInfoResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetUserInfoResponseModelCopyWith<GetUserInfoResponseModel> get copyWith => _$GetUserInfoResponseModelCopyWithImpl<GetUserInfoResponseModel>(this as GetUserInfoResponseModel, _$identity);

  /// Serializes this GetUserInfoResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetUserInfoResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'GetUserInfoResponseModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetUserInfoResponseModelCopyWith<$Res>  {
  factory $GetUserInfoResponseModelCopyWith(GetUserInfoResponseModel value, $Res Function(GetUserInfoResponseModel) _then) = _$GetUserInfoResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') int status,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') UserModel data
});


$UserModelCopyWith<$Res> get data;

}
/// @nodoc
class _$GetUserInfoResponseModelCopyWithImpl<$Res>
    implements $GetUserInfoResponseModelCopyWith<$Res> {
  _$GetUserInfoResponseModelCopyWithImpl(this._self, this._then);

  final GetUserInfoResponseModel _self;
  final $Res Function(GetUserInfoResponseModel) _then;

/// Create a copy of GetUserInfoResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}
/// Create a copy of GetUserInfoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get data {
  
  return $UserModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetUserInfoResponseModel].
extension GetUserInfoResponseModelPatterns on GetUserInfoResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetUserInfoResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUserInfoResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetUserInfoResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _GetUserInfoResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetUserInfoResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetUserInfoResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  int status, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  UserModel data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUserInfoResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  int status, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  UserModel data)  $default,) {final _that = this;
switch (_that) {
case _GetUserInfoResponseModel():
return $default(_that.status,_that.message,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  int status, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  UserModel data)?  $default,) {final _that = this;
switch (_that) {
case _GetUserInfoResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetUserInfoResponseModel implements GetUserInfoResponseModel {
  const _GetUserInfoResponseModel({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'message') required this.message, @JsonKey(name: 'data') required this.data});
  factory _GetUserInfoResponseModel.fromJson(Map<String, dynamic> json) => _$GetUserInfoResponseModelFromJson(json);

@override@JsonKey(name: 'status') final  int status;
@override@JsonKey(name: 'message') final  String message;
@override@JsonKey(name: 'data') final  UserModel data;

/// Create a copy of GetUserInfoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetUserInfoResponseModelCopyWith<_GetUserInfoResponseModel> get copyWith => __$GetUserInfoResponseModelCopyWithImpl<_GetUserInfoResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetUserInfoResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUserInfoResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,data);

@override
String toString() {
  return 'GetUserInfoResponseModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetUserInfoResponseModelCopyWith<$Res> implements $GetUserInfoResponseModelCopyWith<$Res> {
  factory _$GetUserInfoResponseModelCopyWith(_GetUserInfoResponseModel value, $Res Function(_GetUserInfoResponseModel) _then) = __$GetUserInfoResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') int status,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') UserModel data
});


@override $UserModelCopyWith<$Res> get data;

}
/// @nodoc
class __$GetUserInfoResponseModelCopyWithImpl<$Res>
    implements _$GetUserInfoResponseModelCopyWith<$Res> {
  __$GetUserInfoResponseModelCopyWithImpl(this._self, this._then);

  final _GetUserInfoResponseModel _self;
  final $Res Function(_GetUserInfoResponseModel) _then;

/// Create a copy of GetUserInfoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = null,}) {
  return _then(_GetUserInfoResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as UserModel,
  ));
}

/// Create a copy of GetUserInfoResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserModelCopyWith<$Res> get data {
  
  return $UserModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
