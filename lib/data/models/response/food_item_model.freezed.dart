// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FoodItemModel {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'name_food') String get nameFood;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'price') int get price;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'available_date') String get availableDate;@JsonKey(name: 'is_ordered') int get isOrdered;
/// Create a copy of FoodItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FoodItemModelCopyWith<FoodItemModel> get copyWith => _$FoodItemModelCopyWithImpl<FoodItemModel>(this as FoodItemModel, _$identity);

  /// Serializes this FoodItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FoodItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nameFood, nameFood) || other.nameFood == nameFood)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&(identical(other.availableDate, availableDate) || other.availableDate == availableDate)&&(identical(other.isOrdered, isOrdered) || other.isOrdered == isOrdered));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameFood,description,price,image,availableDate,isOrdered);

@override
String toString() {
  return 'FoodItemModel(id: $id, nameFood: $nameFood, description: $description, price: $price, image: $image, availableDate: $availableDate, isOrdered: $isOrdered)';
}


}

/// @nodoc
abstract mixin class $FoodItemModelCopyWith<$Res>  {
  factory $FoodItemModelCopyWith(FoodItemModel value, $Res Function(FoodItemModel) _then) = _$FoodItemModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name_food') String nameFood,@JsonKey(name: 'description') String? description,@JsonKey(name: 'price') int price,@JsonKey(name: 'image') String? image,@JsonKey(name: 'available_date') String availableDate,@JsonKey(name: 'is_ordered') int isOrdered
});




}
/// @nodoc
class _$FoodItemModelCopyWithImpl<$Res>
    implements $FoodItemModelCopyWith<$Res> {
  _$FoodItemModelCopyWithImpl(this._self, this._then);

  final FoodItemModel _self;
  final $Res Function(FoodItemModel) _then;

/// Create a copy of FoodItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameFood = null,Object? description = freezed,Object? price = null,Object? image = freezed,Object? availableDate = null,Object? isOrdered = null,}) {
  return _then(FoodItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nameFood: null == nameFood ? _self.nameFood : nameFood // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,availableDate: null == availableDate ? _self.availableDate : availableDate // ignore: cast_nullable_to_non_nullable
as String,isOrdered: null == isOrdered ? _self.isOrdered : isOrdered // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FoodItemModel].
extension FoodItemModelPatterns on FoodItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FoodItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FoodItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FoodItemModel value)  $default,){
final _that = this;
switch (_that) {
case _FoodItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FoodItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _FoodItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name_food')  String nameFood, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'price')  int price, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'available_date')  String availableDate, @JsonKey(name: 'is_ordered')  int isOrdered)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FoodItemModel() when $default != null:
return $default(_that.id,_that.nameFood,_that.description,_that.price,_that.image,_that.availableDate,_that.isOrdered);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name_food')  String nameFood, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'price')  int price, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'available_date')  String availableDate, @JsonKey(name: 'is_ordered')  int isOrdered)  $default,) {final _that = this;
switch (_that) {
case _FoodItemModel():
return $default(_that.id,_that.nameFood,_that.description,_that.price,_that.image,_that.availableDate,_that.isOrdered);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'name_food')  String nameFood, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'price')  int price, @JsonKey(name: 'image')  String? image, @JsonKey(name: 'available_date')  String availableDate, @JsonKey(name: 'is_ordered')  int isOrdered)?  $default,) {final _that = this;
switch (_that) {
case _FoodItemModel() when $default != null:
return $default(_that.id,_that.nameFood,_that.description,_that.price,_that.image,_that.availableDate,_that.isOrdered);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FoodItemModel implements FoodItemModel {
  const _FoodItemModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'name_food') required this.nameFood, @JsonKey(name: 'description') this.description, @JsonKey(name: 'price') required this.price, @JsonKey(name: 'image') this.image, @JsonKey(name: 'available_date') required this.availableDate, @JsonKey(name: 'is_ordered') required this.isOrdered});
  factory _FoodItemModel.fromJson(Map<String, dynamic> json) => _$FoodItemModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'name_food') final  String nameFood;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'price') final  int price;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'available_date') final  String availableDate;
@override@JsonKey(name: 'is_ordered') final  int isOrdered;

/// Create a copy of FoodItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FoodItemModelCopyWith<_FoodItemModel> get copyWith => __$FoodItemModelCopyWithImpl<_FoodItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FoodItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FoodItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.nameFood, nameFood) || other.nameFood == nameFood)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.image, image) || other.image == image)&&(identical(other.availableDate, availableDate) || other.availableDate == availableDate)&&(identical(other.isOrdered, isOrdered) || other.isOrdered == isOrdered));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameFood,description,price,image,availableDate,isOrdered);

@override
String toString() {
  return 'FoodItemModel(id: $id, nameFood: $nameFood, description: $description, price: $price, image: $image, availableDate: $availableDate, isOrdered: $isOrdered)';
}


}

/// @nodoc
abstract mixin class _$FoodItemModelCopyWith<$Res> implements $FoodItemModelCopyWith<$Res> {
  factory _$FoodItemModelCopyWith(_FoodItemModel value, $Res Function(_FoodItemModel) _then) = __$FoodItemModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'name_food') String nameFood,@JsonKey(name: 'description') String? description,@JsonKey(name: 'price') int price,@JsonKey(name: 'image') String? image,@JsonKey(name: 'available_date') String availableDate,@JsonKey(name: 'is_ordered') int isOrdered
});




}
/// @nodoc
class __$FoodItemModelCopyWithImpl<$Res>
    implements _$FoodItemModelCopyWith<$Res> {
  __$FoodItemModelCopyWithImpl(this._self, this._then);

  final _FoodItemModel _self;
  final $Res Function(_FoodItemModel) _then;

/// Create a copy of FoodItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameFood = null,Object? description = freezed,Object? price = null,Object? image = freezed,Object? availableDate = null,Object? isOrdered = null,}) {
  return _then(_FoodItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nameFood: null == nameFood ? _self.nameFood : nameFood // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,availableDate: null == availableDate ? _self.availableDate : availableDate // ignore: cast_nullable_to_non_nullable
as String,isOrdered: null == isOrdered ? _self.isOrdered : isOrdered // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
