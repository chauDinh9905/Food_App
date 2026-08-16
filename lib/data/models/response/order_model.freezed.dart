// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderModel {

 int get id;@JsonKey(name: 'food_id') int get foodId;@JsonKey(name: 'name_food') String? get nameFood; int get quantity;@JsonKey(name: 'order_date') DateTime? get orderDate; String get status;@JsonKey(name: 'created_at') DateTime? get createdAt;@JsonKey(name: 'available_date') DateTime? get availableDate; int? get price;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'total_price') int? get totalPrice;
/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderModelCopyWith<OrderModel> get copyWith => _$OrderModelCopyWithImpl<OrderModel>(this as OrderModel, _$identity);

  /// Serializes this OrderModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.foodId, foodId) || other.foodId == foodId)&&(identical(other.nameFood, nameFood) || other.nameFood == nameFood)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.availableDate, availableDate) || other.availableDate == availableDate)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,foodId,nameFood,quantity,orderDate,status,createdAt,availableDate,price,imageUrl,totalPrice);

@override
String toString() {
  return 'OrderModel(id: $id, foodId: $foodId, nameFood: $nameFood, quantity: $quantity, orderDate: $orderDate, status: $status, createdAt: $createdAt, availableDate: $availableDate, price: $price, imageUrl: $imageUrl, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class $OrderModelCopyWith<$Res>  {
  factory $OrderModelCopyWith(OrderModel value, $Res Function(OrderModel) _then) = _$OrderModelCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'food_id') int foodId,@JsonKey(name: 'name_food') String? nameFood, int quantity,@JsonKey(name: 'order_date') DateTime? orderDate, String status,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'available_date') DateTime? availableDate, int? price,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'total_price') int? totalPrice
});




}
/// @nodoc
class _$OrderModelCopyWithImpl<$Res>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._self, this._then);

  final OrderModel _self;
  final $Res Function(OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? foodId = null,Object? nameFood = freezed,Object? quantity = null,Object? orderDate = freezed,Object? status = null,Object? createdAt = freezed,Object? availableDate = freezed,Object? price = freezed,Object? imageUrl = freezed,Object? totalPrice = freezed,}) {
  return _then(OrderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as int,nameFood: freezed == nameFood ? _self.nameFood : nameFood // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,orderDate: freezed == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,availableDate: freezed == availableDate ? _self.availableDate : availableDate // ignore: cast_nullable_to_non_nullable
as DateTime?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderModel].
extension OrderModelPatterns on OrderModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'food_id')  int foodId, @JsonKey(name: 'name_food')  String? nameFood,  int quantity, @JsonKey(name: 'order_date')  DateTime? orderDate,  String status, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'available_date')  DateTime? availableDate,  int? price, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'total_price')  int? totalPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.foodId,_that.nameFood,_that.quantity,_that.orderDate,_that.status,_that.createdAt,_that.availableDate,_that.price,_that.imageUrl,_that.totalPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'food_id')  int foodId, @JsonKey(name: 'name_food')  String? nameFood,  int quantity, @JsonKey(name: 'order_date')  DateTime? orderDate,  String status, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'available_date')  DateTime? availableDate,  int? price, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'total_price')  int? totalPrice)  $default,) {final _that = this;
switch (_that) {
case _OrderModel():
return $default(_that.id,_that.foodId,_that.nameFood,_that.quantity,_that.orderDate,_that.status,_that.createdAt,_that.availableDate,_that.price,_that.imageUrl,_that.totalPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'food_id')  int foodId, @JsonKey(name: 'name_food')  String? nameFood,  int quantity, @JsonKey(name: 'order_date')  DateTime? orderDate,  String status, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'available_date')  DateTime? availableDate,  int? price, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'total_price')  int? totalPrice)?  $default,) {final _that = this;
switch (_that) {
case _OrderModel() when $default != null:
return $default(_that.id,_that.foodId,_that.nameFood,_that.quantity,_that.orderDate,_that.status,_that.createdAt,_that.availableDate,_that.price,_that.imageUrl,_that.totalPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OrderModel implements OrderModel {
  const _OrderModel({required this.id, @JsonKey(name: 'food_id') required this.foodId, @JsonKey(name: 'name_food') this.nameFood, required this.quantity, @JsonKey(name: 'order_date') this.orderDate, required this.status, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'available_date') this.availableDate, this.price, @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'total_price') this.totalPrice});
  factory _OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);

@override final  int id;
@override@JsonKey(name: 'food_id') final  int foodId;
@override@JsonKey(name: 'name_food') final  String? nameFood;
@override final  int quantity;
@override@JsonKey(name: 'order_date') final  DateTime? orderDate;
@override final  String status;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
@override@JsonKey(name: 'available_date') final  DateTime? availableDate;
@override final  int? price;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'total_price') final  int? totalPrice;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderModelCopyWith<_OrderModel> get copyWith => __$OrderModelCopyWithImpl<_OrderModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderModel&&(identical(other.id, id) || other.id == id)&&(identical(other.foodId, foodId) || other.foodId == foodId)&&(identical(other.nameFood, nameFood) || other.nameFood == nameFood)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.availableDate, availableDate) || other.availableDate == availableDate)&&(identical(other.price, price) || other.price == price)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,foodId,nameFood,quantity,orderDate,status,createdAt,availableDate,price,imageUrl,totalPrice);

@override
String toString() {
  return 'OrderModel(id: $id, foodId: $foodId, nameFood: $nameFood, quantity: $quantity, orderDate: $orderDate, status: $status, createdAt: $createdAt, availableDate: $availableDate, price: $price, imageUrl: $imageUrl, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$OrderModelCopyWith<$Res> implements $OrderModelCopyWith<$Res> {
  factory _$OrderModelCopyWith(_OrderModel value, $Res Function(_OrderModel) _then) = __$OrderModelCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'food_id') int foodId,@JsonKey(name: 'name_food') String? nameFood, int quantity,@JsonKey(name: 'order_date') DateTime? orderDate, String status,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'available_date') DateTime? availableDate, int? price,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'total_price') int? totalPrice
});




}
/// @nodoc
class __$OrderModelCopyWithImpl<$Res>
    implements _$OrderModelCopyWith<$Res> {
  __$OrderModelCopyWithImpl(this._self, this._then);

  final _OrderModel _self;
  final $Res Function(_OrderModel) _then;

/// Create a copy of OrderModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? foodId = null,Object? nameFood = freezed,Object? quantity = null,Object? orderDate = freezed,Object? status = null,Object? createdAt = freezed,Object? availableDate = freezed,Object? price = freezed,Object? imageUrl = freezed,Object? totalPrice = freezed,}) {
  return _then(_OrderModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,foodId: null == foodId ? _self.foodId : foodId // ignore: cast_nullable_to_non_nullable
as int,nameFood: freezed == nameFood ? _self.nameFood : nameFood // ignore: cast_nullable_to_non_nullable
as String?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,orderDate: freezed == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,availableDate: freezed == availableDate ? _self.availableDate : availableDate // ignore: cast_nullable_to_non_nullable
as DateTime?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,totalPrice: freezed == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
