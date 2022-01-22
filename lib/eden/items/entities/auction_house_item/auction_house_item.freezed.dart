// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auction_house_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuctionHouseItem _$AuctionHouseItemFromJson(Map<String, dynamic> json) {
  return _AuctionHouseItem.fromJson(json);
}

/// @nodoc
class _$AuctionHouseItemTearOff {
  const _$AuctionHouseItemTearOff();

  _AuctionHouseItem call(
      {@JsonKey(name: 'buyer_name') required String buyerName,
      required String name,
      required int sale,
      @JsonKey(name: 'sell_date') required int sellDate,
      @JsonKey(name: 'seller_name') required String sellerName}) {
    return _AuctionHouseItem(
      buyerName: buyerName,
      name: name,
      sale: sale,
      sellDate: sellDate,
      sellerName: sellerName,
    );
  }

  AuctionHouseItem fromJson(Map<String, Object?> json) {
    return AuctionHouseItem.fromJson(json);
  }
}

/// @nodoc
const $AuctionHouseItem = _$AuctionHouseItemTearOff();

/// @nodoc
mixin _$AuctionHouseItem {
  @JsonKey(name: 'buyer_name')
  String get buyerName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get sale => throw _privateConstructorUsedError;
  @JsonKey(name: 'sell_date')
  int get sellDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_name')
  String get sellerName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuctionHouseItemCopyWith<AuctionHouseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionHouseItemCopyWith<$Res> {
  factory $AuctionHouseItemCopyWith(
          AuctionHouseItem value, $Res Function(AuctionHouseItem) then) =
      _$AuctionHouseItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'buyer_name') String buyerName,
      String name,
      int sale,
      @JsonKey(name: 'sell_date') int sellDate,
      @JsonKey(name: 'seller_name') String sellerName});
}

/// @nodoc
class _$AuctionHouseItemCopyWithImpl<$Res>
    implements $AuctionHouseItemCopyWith<$Res> {
  _$AuctionHouseItemCopyWithImpl(this._value, this._then);

  final AuctionHouseItem _value;
  // ignore: unused_field
  final $Res Function(AuctionHouseItem) _then;

  @override
  $Res call({
    Object? buyerName = freezed,
    Object? name = freezed,
    Object? sale = freezed,
    Object? sellDate = freezed,
    Object? sellerName = freezed,
  }) {
    return _then(_value.copyWith(
      buyerName: buyerName == freezed
          ? _value.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sale: sale == freezed
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as int,
      sellDate: sellDate == freezed
          ? _value.sellDate
          : sellDate // ignore: cast_nullable_to_non_nullable
              as int,
      sellerName: sellerName == freezed
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuctionHouseItemCopyWith<$Res>
    implements $AuctionHouseItemCopyWith<$Res> {
  factory _$AuctionHouseItemCopyWith(
          _AuctionHouseItem value, $Res Function(_AuctionHouseItem) then) =
      __$AuctionHouseItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'buyer_name') String buyerName,
      String name,
      int sale,
      @JsonKey(name: 'sell_date') int sellDate,
      @JsonKey(name: 'seller_name') String sellerName});
}

/// @nodoc
class __$AuctionHouseItemCopyWithImpl<$Res>
    extends _$AuctionHouseItemCopyWithImpl<$Res>
    implements _$AuctionHouseItemCopyWith<$Res> {
  __$AuctionHouseItemCopyWithImpl(
      _AuctionHouseItem _value, $Res Function(_AuctionHouseItem) _then)
      : super(_value, (v) => _then(v as _AuctionHouseItem));

  @override
  _AuctionHouseItem get _value => super._value as _AuctionHouseItem;

  @override
  $Res call({
    Object? buyerName = freezed,
    Object? name = freezed,
    Object? sale = freezed,
    Object? sellDate = freezed,
    Object? sellerName = freezed,
  }) {
    return _then(_AuctionHouseItem(
      buyerName: buyerName == freezed
          ? _value.buyerName
          : buyerName // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sale: sale == freezed
          ? _value.sale
          : sale // ignore: cast_nullable_to_non_nullable
              as int,
      sellDate: sellDate == freezed
          ? _value.sellDate
          : sellDate // ignore: cast_nullable_to_non_nullable
              as int,
      sellerName: sellerName == freezed
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuctionHouseItem implements _AuctionHouseItem {
  _$_AuctionHouseItem(
      {@JsonKey(name: 'buyer_name') required this.buyerName,
      required this.name,
      required this.sale,
      @JsonKey(name: 'sell_date') required this.sellDate,
      @JsonKey(name: 'seller_name') required this.sellerName});

  factory _$_AuctionHouseItem.fromJson(Map<String, dynamic> json) =>
      _$$_AuctionHouseItemFromJson(json);

  @override
  @JsonKey(name: 'buyer_name')
  final String buyerName;
  @override
  final String name;
  @override
  final int sale;
  @override
  @JsonKey(name: 'sell_date')
  final int sellDate;
  @override
  @JsonKey(name: 'seller_name')
  final String sellerName;

  @override
  String toString() {
    return 'AuctionHouseItem(buyerName: $buyerName, name: $name, sale: $sale, sellDate: $sellDate, sellerName: $sellerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuctionHouseItem &&
            (identical(other.buyerName, buyerName) ||
                other.buyerName == buyerName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sale, sale) || other.sale == sale) &&
            (identical(other.sellDate, sellDate) ||
                other.sellDate == sellDate) &&
            (identical(other.sellerName, sellerName) ||
                other.sellerName == sellerName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, buyerName, name, sale, sellDate, sellerName);

  @JsonKey(ignore: true)
  @override
  _$AuctionHouseItemCopyWith<_AuctionHouseItem> get copyWith =>
      __$AuctionHouseItemCopyWithImpl<_AuctionHouseItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuctionHouseItemToJson(this);
  }
}

abstract class _AuctionHouseItem implements AuctionHouseItem {
  factory _AuctionHouseItem(
          {@JsonKey(name: 'buyer_name') required String buyerName,
          required String name,
          required int sale,
          @JsonKey(name: 'sell_date') required int sellDate,
          @JsonKey(name: 'seller_name') required String sellerName}) =
      _$_AuctionHouseItem;

  factory _AuctionHouseItem.fromJson(Map<String, dynamic> json) =
      _$_AuctionHouseItem.fromJson;

  @override
  @JsonKey(name: 'buyer_name')
  String get buyerName;
  @override
  String get name;
  @override
  int get sale;
  @override
  @JsonKey(name: 'sell_date')
  int get sellDate;
  @override
  @JsonKey(name: 'seller_name')
  String get sellerName;
  @override
  @JsonKey(ignore: true)
  _$AuctionHouseItemCopyWith<_AuctionHouseItem> get copyWith =>
      throw _privateConstructorUsedError;
}
