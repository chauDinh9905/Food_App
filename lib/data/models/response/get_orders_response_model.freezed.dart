// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_orders_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetOrdersResponseModel {

 bool get success; List<OrderModel> get data; OrderPaginationModel get pagination;
/// Create a copy of GetOrdersResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOrdersResponseModelCopyWith<GetOrdersResponseModel> get copyWith => _$GetOrdersResponseModelCopyWithImpl<GetOrdersResponseModel>(this as GetOrdersResponseModel, _$identity);

  /// Serializes this GetOrdersResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrdersResponseModel&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(data),pagination);

@override
String toString() {
  return 'GetOrdersResponseModel(success: $success, data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $GetOrdersResponseModelCopyWith<$Res>  {
  factory $GetOrdersResponseModelCopyWith(GetOrdersResponseModel value, $Res Function(GetOrdersResponseModel) _then) = _$GetOrdersResponseModelCopyWithImpl;
@useResult
$Res call({
 bool success, List<OrderModel> data, OrderPaginationModel pagination
});


$OrderPaginationModelCopyWith<$Res> get pagination;

}
/// @nodoc
class _$GetOrdersResponseModelCopyWithImpl<$Res>
    implements $GetOrdersResponseModelCopyWith<$Res> {
  _$GetOrdersResponseModelCopyWithImpl(this._self, this._then);

  final GetOrdersResponseModel _self;
  final $Res Function(GetOrdersResponseModel) _then;

/// Create a copy of GetOrdersResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? data = null,Object? pagination = null,}) {
  return _then(GetOrdersResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<OrderModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as OrderPaginationModel,
  ));
}
/// Create a copy of GetOrdersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderPaginationModelCopyWith<$Res> get pagination {
  
  return $OrderPaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetOrdersResponseModel].
extension GetOrdersResponseModelPatterns on GetOrdersResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetOrdersResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetOrdersResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetOrdersResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _GetOrdersResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetOrdersResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetOrdersResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  List<OrderModel> data,  OrderPaginationModel pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetOrdersResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  List<OrderModel> data,  OrderPaginationModel pagination)  $default,) {final _that = this;
switch (_that) {
case _GetOrdersResponseModel():
return $default(_that.success,_that.data,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  List<OrderModel> data,  OrderPaginationModel pagination)?  $default,) {final _that = this;
switch (_that) {
case _GetOrdersResponseModel() when $default != null:
return $default(_that.success,_that.data,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetOrdersResponseModel implements GetOrdersResponseModel {
  const _GetOrdersResponseModel({required this.success, required  List<OrderModel> data, required this.pagination}): _data = data;
  factory _GetOrdersResponseModel.fromJson(Map<String, dynamic> json) => _$GetOrdersResponseModelFromJson(json);

@override final  bool success;
 final  List<OrderModel> _data;
@override List<OrderModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  OrderPaginationModel pagination;

/// Create a copy of GetOrdersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetOrdersResponseModelCopyWith<_GetOrdersResponseModel> get copyWith => __$GetOrdersResponseModelCopyWithImpl<_GetOrdersResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetOrdersResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrdersResponseModel&&(identical(other.success, success) || other.success == success)&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,const DeepCollectionEquality().hash(_data),pagination);

@override
String toString() {
  return 'GetOrdersResponseModel(success: $success, data: $data, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$GetOrdersResponseModelCopyWith<$Res> implements $GetOrdersResponseModelCopyWith<$Res> {
  factory _$GetOrdersResponseModelCopyWith(_GetOrdersResponseModel value, $Res Function(_GetOrdersResponseModel) _then) = __$GetOrdersResponseModelCopyWithImpl;
@override @useResult
$Res call({
 bool success, List<OrderModel> data, OrderPaginationModel pagination
});


@override $OrderPaginationModelCopyWith<$Res> get pagination;

}
/// @nodoc
class __$GetOrdersResponseModelCopyWithImpl<$Res>
    implements _$GetOrdersResponseModelCopyWith<$Res> {
  __$GetOrdersResponseModelCopyWithImpl(this._self, this._then);

  final _GetOrdersResponseModel _self;
  final $Res Function(_GetOrdersResponseModel) _then;

/// Create a copy of GetOrdersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? data = null,Object? pagination = null,}) {
  return _then(_GetOrdersResponseModel(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<OrderModel>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as OrderPaginationModel,
  ));
}

/// Create a copy of GetOrdersResponseModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderPaginationModelCopyWith<$Res> get pagination {
  
  return $OrderPaginationModelCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
