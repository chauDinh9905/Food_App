// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_orders.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaginatedOrders {

 List<Order> get orders; Pagination get pagination;
/// Create a copy of PaginatedOrders
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedOrdersCopyWith<PaginatedOrders> get copyWith => _$PaginatedOrdersCopyWithImpl<PaginatedOrders>(this as PaginatedOrders, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedOrders&&const DeepCollectionEquality().equals(other.orders, orders)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(orders),pagination);

@override
String toString() {
  return 'PaginatedOrders(orders: $orders, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class $PaginatedOrdersCopyWith<$Res>  {
  factory $PaginatedOrdersCopyWith(PaginatedOrders value, $Res Function(PaginatedOrders) _then) = _$PaginatedOrdersCopyWithImpl;
@useResult
$Res call({
 List<Order> orders, Pagination pagination
});


$PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class _$PaginatedOrdersCopyWithImpl<$Res>
    implements $PaginatedOrdersCopyWith<$Res> {
  _$PaginatedOrdersCopyWithImpl(this._self, this._then);

  final PaginatedOrders _self;
  final $Res Function(PaginatedOrders) _then;

/// Create a copy of PaginatedOrders
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orders = null,Object? pagination = null,}) {
  return _then(PaginatedOrders(
orders: null == orders ? _self.orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}
/// Create a copy of PaginatedOrders
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaginatedOrders].
extension PaginatedOrdersPatterns on PaginatedOrders {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedOrders value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedOrders() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedOrders value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedOrders():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedOrders value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedOrders() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Order> orders,  Pagination pagination)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedOrders() when $default != null:
return $default(_that.orders,_that.pagination);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Order> orders,  Pagination pagination)  $default,) {final _that = this;
switch (_that) {
case _PaginatedOrders():
return $default(_that.orders,_that.pagination);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Order> orders,  Pagination pagination)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedOrders() when $default != null:
return $default(_that.orders,_that.pagination);case _:
  return null;

}
}

}

/// @nodoc


class _PaginatedOrders implements PaginatedOrders {
  const _PaginatedOrders({required  List<Order> orders, required this.pagination}): _orders = orders;
  

 final  List<Order> _orders;
@override List<Order> get orders {
  if (_orders is EqualUnmodifiableListView) return _orders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_orders);
}

@override final  Pagination pagination;

/// Create a copy of PaginatedOrders
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedOrdersCopyWith<_PaginatedOrders> get copyWith => __$PaginatedOrdersCopyWithImpl<_PaginatedOrders>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedOrders&&const DeepCollectionEquality().equals(other._orders, _orders)&&(identical(other.pagination, pagination) || other.pagination == pagination));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_orders),pagination);

@override
String toString() {
  return 'PaginatedOrders(orders: $orders, pagination: $pagination)';
}


}

/// @nodoc
abstract mixin class _$PaginatedOrdersCopyWith<$Res> implements $PaginatedOrdersCopyWith<$Res> {
  factory _$PaginatedOrdersCopyWith(_PaginatedOrders value, $Res Function(_PaginatedOrders) _then) = __$PaginatedOrdersCopyWithImpl;
@override @useResult
$Res call({
 List<Order> orders, Pagination pagination
});


@override $PaginationCopyWith<$Res> get pagination;

}
/// @nodoc
class __$PaginatedOrdersCopyWithImpl<$Res>
    implements _$PaginatedOrdersCopyWith<$Res> {
  __$PaginatedOrdersCopyWithImpl(this._self, this._then);

  final _PaginatedOrders _self;
  final $Res Function(_PaginatedOrders) _then;

/// Create a copy of PaginatedOrders
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orders = null,Object? pagination = null,}) {
  return _then(_PaginatedOrders(
orders: null == orders ? _self._orders : orders // ignore: cast_nullable_to_non_nullable
as List<Order>,pagination: null == pagination ? _self.pagination : pagination // ignore: cast_nullable_to_non_nullable
as Pagination,
  ));
}

/// Create a copy of PaginatedOrders
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginationCopyWith<$Res> get pagination {
  
  return $PaginationCopyWith<$Res>(_self.pagination, (value) {
    return _then(_self.copyWith(pagination: value));
  });
}
}

// dart format on
