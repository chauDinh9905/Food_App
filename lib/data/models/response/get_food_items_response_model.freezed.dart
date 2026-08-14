// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_food_items_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetFoodItemsResponseModel {

@JsonKey(name: 'status') int get status;@JsonKey(name: 'message') String get message;@JsonKey(name: 'data') List<FoodItemModel> get data;
/// Create a copy of GetFoodItemsResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetFoodItemsResponseModelCopyWith<GetFoodItemsResponseModel> get copyWith => _$GetFoodItemsResponseModelCopyWithImpl<GetFoodItemsResponseModel>(this as GetFoodItemsResponseModel, _$identity);

  /// Serializes this GetFoodItemsResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetFoodItemsResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetFoodItemsResponseModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetFoodItemsResponseModelCopyWith<$Res>  {
  factory $GetFoodItemsResponseModelCopyWith(GetFoodItemsResponseModel value, $Res Function(GetFoodItemsResponseModel) _then) = _$GetFoodItemsResponseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'status') int status,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') List<FoodItemModel> data
});




}
/// @nodoc
class _$GetFoodItemsResponseModelCopyWithImpl<$Res>
    implements $GetFoodItemsResponseModelCopyWith<$Res> {
  _$GetFoodItemsResponseModelCopyWithImpl(this._self, this._then);

  final GetFoodItemsResponseModel _self;
  final $Res Function(GetFoodItemsResponseModel) _then;

/// Create a copy of GetFoodItemsResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? message = null,Object? data = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<FoodItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetFoodItemsResponseModel].
extension GetFoodItemsResponseModelPatterns on GetFoodItemsResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetFoodItemsResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetFoodItemsResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetFoodItemsResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _GetFoodItemsResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetFoodItemsResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetFoodItemsResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  int status, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  List<FoodItemModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetFoodItemsResponseModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'status')  int status, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  List<FoodItemModel> data)  $default,) {final _that = this;
switch (_that) {
case _GetFoodItemsResponseModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'status')  int status, @JsonKey(name: 'message')  String message, @JsonKey(name: 'data')  List<FoodItemModel> data)?  $default,) {final _that = this;
switch (_that) {
case _GetFoodItemsResponseModel() when $default != null:
return $default(_that.status,_that.message,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetFoodItemsResponseModel implements GetFoodItemsResponseModel {
  const _GetFoodItemsResponseModel({@JsonKey(name: 'status') required this.status, @JsonKey(name: 'message') required this.message, @JsonKey(name: 'data') required  List<FoodItemModel> data}): _data = data;
  factory _GetFoodItemsResponseModel.fromJson(Map<String, dynamic> json) => _$GetFoodItemsResponseModelFromJson(json);

@override@JsonKey(name: 'status') final  int status;
@override@JsonKey(name: 'message') final  String message;
 final  List<FoodItemModel> _data;
@override@JsonKey(name: 'data') List<FoodItemModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GetFoodItemsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetFoodItemsResponseModelCopyWith<_GetFoodItemsResponseModel> get copyWith => __$GetFoodItemsResponseModelCopyWithImpl<_GetFoodItemsResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetFoodItemsResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetFoodItemsResponseModel&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,message,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetFoodItemsResponseModel(status: $status, message: $message, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetFoodItemsResponseModelCopyWith<$Res> implements $GetFoodItemsResponseModelCopyWith<$Res> {
  factory _$GetFoodItemsResponseModelCopyWith(_GetFoodItemsResponseModel value, $Res Function(_GetFoodItemsResponseModel) _then) = __$GetFoodItemsResponseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'status') int status,@JsonKey(name: 'message') String message,@JsonKey(name: 'data') List<FoodItemModel> data
});




}
/// @nodoc
class __$GetFoodItemsResponseModelCopyWithImpl<$Res>
    implements _$GetFoodItemsResponseModelCopyWith<$Res> {
  __$GetFoodItemsResponseModelCopyWithImpl(this._self, this._then);

  final _GetFoodItemsResponseModel _self;
  final $Res Function(_GetFoodItemsResponseModel) _then;

/// Create a copy of GetFoodItemsResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? message = null,Object? data = null,}) {
  return _then(_GetFoodItemsResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<FoodItemModel>,
  ));
}


}

// dart format on
