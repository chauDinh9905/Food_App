// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_orders_by_month_year_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetOrdersByMonthYearRequestModel {

 int get month; int get year;
/// Create a copy of GetOrdersByMonthYearRequestModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetOrdersByMonthYearRequestModelCopyWith<GetOrdersByMonthYearRequestModel> get copyWith => _$GetOrdersByMonthYearRequestModelCopyWithImpl<GetOrdersByMonthYearRequestModel>(this as GetOrdersByMonthYearRequestModel, _$identity);

  /// Serializes this GetOrdersByMonthYearRequestModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetOrdersByMonthYearRequestModel&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year);

@override
String toString() {
  return 'GetOrdersByMonthYearRequestModel(month: $month, year: $year)';
}


}

/// @nodoc
abstract mixin class $GetOrdersByMonthYearRequestModelCopyWith<$Res>  {
  factory $GetOrdersByMonthYearRequestModelCopyWith(GetOrdersByMonthYearRequestModel value, $Res Function(GetOrdersByMonthYearRequestModel) _then) = _$GetOrdersByMonthYearRequestModelCopyWithImpl;
@useResult
$Res call({
 int month, int year
});




}
/// @nodoc
class _$GetOrdersByMonthYearRequestModelCopyWithImpl<$Res>
    implements $GetOrdersByMonthYearRequestModelCopyWith<$Res> {
  _$GetOrdersByMonthYearRequestModelCopyWithImpl(this._self, this._then);

  final GetOrdersByMonthYearRequestModel _self;
  final $Res Function(GetOrdersByMonthYearRequestModel) _then;

/// Create a copy of GetOrdersByMonthYearRequestModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = null,Object? year = null,}) {
  return _then(GetOrdersByMonthYearRequestModel(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetOrdersByMonthYearRequestModel].
extension GetOrdersByMonthYearRequestModelPatterns on GetOrdersByMonthYearRequestModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetOrdersByMonthYearRequestModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetOrdersByMonthYearRequestModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetOrdersByMonthYearRequestModel value)  $default,){
final _that = this;
switch (_that) {
case _GetOrdersByMonthYearRequestModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetOrdersByMonthYearRequestModel value)?  $default,){
final _that = this;
switch (_that) {
case _GetOrdersByMonthYearRequestModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int month,  int year)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetOrdersByMonthYearRequestModel() when $default != null:
return $default(_that.month,_that.year);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int month,  int year)  $default,) {final _that = this;
switch (_that) {
case _GetOrdersByMonthYearRequestModel():
return $default(_that.month,_that.year);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int month,  int year)?  $default,) {final _that = this;
switch (_that) {
case _GetOrdersByMonthYearRequestModel() when $default != null:
return $default(_that.month,_that.year);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetOrdersByMonthYearRequestModel implements GetOrdersByMonthYearRequestModel {
  const _GetOrdersByMonthYearRequestModel({required this.month, required this.year});
  factory _GetOrdersByMonthYearRequestModel.fromJson(Map<String, dynamic> json) => _$GetOrdersByMonthYearRequestModelFromJson(json);

@override final  int month;
@override final  int year;

/// Create a copy of GetOrdersByMonthYearRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetOrdersByMonthYearRequestModelCopyWith<_GetOrdersByMonthYearRequestModel> get copyWith => __$GetOrdersByMonthYearRequestModelCopyWithImpl<_GetOrdersByMonthYearRequestModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetOrdersByMonthYearRequestModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetOrdersByMonthYearRequestModel&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year);

@override
String toString() {
  return 'GetOrdersByMonthYearRequestModel(month: $month, year: $year)';
}


}

/// @nodoc
abstract mixin class _$GetOrdersByMonthYearRequestModelCopyWith<$Res> implements $GetOrdersByMonthYearRequestModelCopyWith<$Res> {
  factory _$GetOrdersByMonthYearRequestModelCopyWith(_GetOrdersByMonthYearRequestModel value, $Res Function(_GetOrdersByMonthYearRequestModel) _then) = __$GetOrdersByMonthYearRequestModelCopyWithImpl;
@override @useResult
$Res call({
 int month, int year
});




}
/// @nodoc
class __$GetOrdersByMonthYearRequestModelCopyWithImpl<$Res>
    implements _$GetOrdersByMonthYearRequestModelCopyWith<$Res> {
  __$GetOrdersByMonthYearRequestModelCopyWithImpl(this._self, this._then);

  final _GetOrdersByMonthYearRequestModel _self;
  final $Res Function(_GetOrdersByMonthYearRequestModel) _then;

/// Create a copy of GetOrdersByMonthYearRequestModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = null,Object? year = null,}) {
  return _then(_GetOrdersByMonthYearRequestModel(
month: null == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
