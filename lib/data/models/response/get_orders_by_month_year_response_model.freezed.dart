// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_orders_by_month_year_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetOrdersByMonthYearResponseModel {

 int get status; List<OrderModel> get data;
/// Create a copy of GetOrdersByMonthYearResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOrdersByMonthYearResponseModelCopyWith<GetOrdersByMonthYearResponseModel> get copyWith => _$GetOrdersByMonthYearResponseModelCopyWithImpl<GetOrdersByMonthYearResponseModel>(this as GetOrdersByMonthYearResponseModel, _$identity);

  /// Serializes this GetOrdersByMonthYearResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrdersByMonthYearResponseModel&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'GetOrdersByMonthYearResponseModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class $GetOrdersByMonthYearResponseModelCopyWith<$Res>  {
  factory $GetOrdersByMonthYearResponseModelCopyWith(GetOrdersByMonthYearResponseModel value, $Res Function(GetOrdersByMonthYearResponseModel) _then) = _$GetOrdersByMonthYearResponseModelCopyWithImpl;
@useResult
$Res call({
 int status, List<OrderModel> data
});




}
/// @nodoc
class _$GetOrdersByMonthYearResponseModelCopyWithImpl<$Res>
    implements $GetOrdersByMonthYearResponseModelCopyWith<$Res> {
  _$GetOrdersByMonthYearResponseModelCopyWithImpl(this._self, this._then);

  final GetOrdersByMonthYearResponseModel _self;
  final $Res Function(GetOrdersByMonthYearResponseModel) _then;

/// Create a copy of GetOrdersByMonthYearResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? data = null,}) {
  return _then(GetOrdersByMonthYearResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<OrderModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [GetOrdersByMonthYearResponseModel].
extension GetOrdersByMonthYearResponseModelPatterns on GetOrdersByMonthYearResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetOrdersByMonthYearResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetOrdersByMonthYearResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetOrdersByMonthYearResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _GetOrdersByMonthYearResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetOrdersByMonthYearResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetOrdersByMonthYearResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  List<OrderModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetOrdersByMonthYearResponseModel() when $default != null:
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  List<OrderModel> data)  $default,) {final _that = this;
switch (_that) {
case _GetOrdersByMonthYearResponseModel():
return $default(_that.status,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  List<OrderModel> data)?  $default,) {final _that = this;
switch (_that) {
case _GetOrdersByMonthYearResponseModel() when $default != null:
return $default(_that.status,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetOrdersByMonthYearResponseModel implements GetOrdersByMonthYearResponseModel {
  const _GetOrdersByMonthYearResponseModel({required this.status, required  List<OrderModel> data}): _data = data;
  factory _GetOrdersByMonthYearResponseModel.fromJson(Map<String, dynamic> json) => _$GetOrdersByMonthYearResponseModelFromJson(json);

@override final  int status;
 final  List<OrderModel> _data;
@override List<OrderModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of GetOrdersByMonthYearResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetOrdersByMonthYearResponseModelCopyWith<_GetOrdersByMonthYearResponseModel> get copyWith => __$GetOrdersByMonthYearResponseModelCopyWithImpl<_GetOrdersByMonthYearResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetOrdersByMonthYearResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrdersByMonthYearResponseModel&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'GetOrdersByMonthYearResponseModel(status: $status, data: $data)';
}


}

/// @nodoc
abstract mixin class _$GetOrdersByMonthYearResponseModelCopyWith<$Res> implements $GetOrdersByMonthYearResponseModelCopyWith<$Res> {
  factory _$GetOrdersByMonthYearResponseModelCopyWith(_GetOrdersByMonthYearResponseModel value, $Res Function(_GetOrdersByMonthYearResponseModel) _then) = __$GetOrdersByMonthYearResponseModelCopyWithImpl;
@override @useResult
$Res call({
 int status, List<OrderModel> data
});




}
/// @nodoc
class __$GetOrdersByMonthYearResponseModelCopyWithImpl<$Res>
    implements _$GetOrdersByMonthYearResponseModelCopyWith<$Res> {
  __$GetOrdersByMonthYearResponseModelCopyWithImpl(this._self, this._then);

  final _GetOrdersByMonthYearResponseModel _self;
  final $Res Function(_GetOrdersByMonthYearResponseModel) _then;

/// Create a copy of GetOrdersByMonthYearResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? data = null,}) {
  return _then(_GetOrdersByMonthYearResponseModel(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<OrderModel>,
  ));
}


}

// dart format on
