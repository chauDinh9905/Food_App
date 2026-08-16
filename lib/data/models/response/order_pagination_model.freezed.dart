// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_pagination_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderPaginationModel {

 int get page; int get limit; int get total; bool get hasMore;
/// Create a copy of OrderPaginationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderPaginationModelCopyWith<OrderPaginationModel> get copyWith => _$OrderPaginationModelCopyWithImpl<OrderPaginationModel>(this as OrderPaginationModel, _$identity);

  /// Serializes this OrderPaginationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderPaginationModel&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,hasMore);

@override
String toString() {
  return 'OrderPaginationModel(page: $page, limit: $limit, total: $total, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $OrderPaginationModelCopyWith<$Res>  {
  factory $OrderPaginationModelCopyWith(OrderPaginationModel value, $Res Function(OrderPaginationModel) _then) = _$OrderPaginationModelCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int total, bool hasMore
});




}
/// @nodoc
class _$OrderPaginationModelCopyWithImpl<$Res>
    implements $OrderPaginationModelCopyWith<$Res> {
  _$OrderPaginationModelCopyWithImpl(this._self, this._then);

  final OrderPaginationModel _self;
  final $Res Function(OrderPaginationModel) _then;

/// Create a copy of OrderPaginationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? hasMore = null,}) {
  return _then(OrderPaginationModel(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderPaginationModel].
extension OrderPaginationModelPatterns on OrderPaginationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderPaginationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderPaginationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderPaginationModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderPaginationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderPaginationModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderPaginationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderPaginationModel() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit,  int total,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _OrderPaginationModel():
return $default(_that.page,_that.limit,_that.total,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit,  int total,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _OrderPaginationModel() when $default != null:
return $default(_that.page,_that.limit,_that.total,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderPaginationModel implements OrderPaginationModel {
  const _OrderPaginationModel({required this.page, required this.limit, required this.total, required this.hasMore});
  factory _OrderPaginationModel.fromJson(Map<String, dynamic> json) => _$OrderPaginationModelFromJson(json);

@override final  int page;
@override final  int limit;
@override final  int total;
@override final  bool hasMore;

/// Create a copy of OrderPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderPaginationModelCopyWith<_OrderPaginationModel> get copyWith => __$OrderPaginationModelCopyWithImpl<_OrderPaginationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderPaginationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderPaginationModel&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.total, total) || other.total == total)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,total,hasMore);

@override
String toString() {
  return 'OrderPaginationModel(page: $page, limit: $limit, total: $total, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$OrderPaginationModelCopyWith<$Res> implements $OrderPaginationModelCopyWith<$Res> {
  factory _$OrderPaginationModelCopyWith(_OrderPaginationModel value, $Res Function(_OrderPaginationModel) _then) = __$OrderPaginationModelCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int total, bool hasMore
});




}
/// @nodoc
class __$OrderPaginationModelCopyWithImpl<$Res>
    implements _$OrderPaginationModelCopyWith<$Res> {
  __$OrderPaginationModelCopyWithImpl(this._self, this._then);

  final _OrderPaginationModel _self;
  final $Res Function(_OrderPaginationModel) _then;

/// Create a copy of OrderPaginationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? total = null,Object? hasMore = null,}) {
  return _then(_OrderPaginationModel(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
