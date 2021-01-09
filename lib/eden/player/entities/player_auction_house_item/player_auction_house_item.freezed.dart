// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'player_auction_house_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlayerAuctionHouseItem _$PlayerAuctionHouseItemFromJson(
    Map<String, dynamic> json) {
  return _PlayerAuctionHouseItem.fromJson(json);
}

/// @nodoc
class _$PlayerAuctionHouseItemTearOff {
  const _$PlayerAuctionHouseItemTearOff();

// ignore: unused_element
  _PlayerAuctionHouseItem call(
      {@JsonKey(name: 'buyer_name') String buyerName,
      String name,
      int sale,
      @JsonKey(name: 'sell_date') int sellDate,
      @JsonKey(name: 'seller_name') String sellerName,
      @JsonKey(name: 'stack_size') int stackSize}) {
    return _PlayerAuctionHouseItem(
      buyerName: buyerName,
      name: name,
      sale: sale,
      sellDate: sellDate,
      sellerName: sellerName,
      stackSize: stackSize,
    );
  }

// ignore: unused_element
  PlayerAuctionHouseItem fromJson(Map<String, Object> json) {
    return PlayerAuctionHouseItem.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PlayerAuctionHouseItem = _$PlayerAuctionHouseItemTearOff();

/// @nodoc
mixin _$PlayerAuctionHouseItem {
  @JsonKey(name: 'buyer_name')
  String get buyerName;
  String get name;
  int get sale;
  @JsonKey(name: 'sell_date')
  int get sellDate;
  @JsonKey(name: 'seller_name')
  String get sellerName;
  @JsonKey(name: 'stack_size')
  int get stackSize;

  Map<String, dynamic> toJson();
  $PlayerAuctionHouseItemCopyWith<PlayerAuctionHouseItem> get copyWith;
}

/// @nodoc
abstract class $PlayerAuctionHouseItemCopyWith<$Res> {
  factory $PlayerAuctionHouseItemCopyWith(PlayerAuctionHouseItem value,
          $Res Function(PlayerAuctionHouseItem) then) =
      _$PlayerAuctionHouseItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'buyer_name') String buyerName,
      String name,
      int sale,
      @JsonKey(name: 'sell_date') int sellDate,
      @JsonKey(name: 'seller_name') String sellerName,
      @JsonKey(name: 'stack_size') int stackSize});
}

/// @nodoc
class _$PlayerAuctionHouseItemCopyWithImpl<$Res>
    implements $PlayerAuctionHouseItemCopyWith<$Res> {
  _$PlayerAuctionHouseItemCopyWithImpl(this._value, this._then);

  final PlayerAuctionHouseItem _value;
  // ignore: unused_field
  final $Res Function(PlayerAuctionHouseItem) _then;

  @override
  $Res call({
    Object buyerName = freezed,
    Object name = freezed,
    Object sale = freezed,
    Object sellDate = freezed,
    Object sellerName = freezed,
    Object stackSize = freezed,
  }) {
    return _then(_value.copyWith(
      buyerName: buyerName == freezed ? _value.buyerName : buyerName as String,
      name: name == freezed ? _value.name : name as String,
      sale: sale == freezed ? _value.sale : sale as int,
      sellDate: sellDate == freezed ? _value.sellDate : sellDate as int,
      sellerName:
          sellerName == freezed ? _value.sellerName : sellerName as String,
      stackSize: stackSize == freezed ? _value.stackSize : stackSize as int,
    ));
  }
}

/// @nodoc
abstract class _$PlayerAuctionHouseItemCopyWith<$Res>
    implements $PlayerAuctionHouseItemCopyWith<$Res> {
  factory _$PlayerAuctionHouseItemCopyWith(_PlayerAuctionHouseItem value,
          $Res Function(_PlayerAuctionHouseItem) then) =
      __$PlayerAuctionHouseItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'buyer_name') String buyerName,
      String name,
      int sale,
      @JsonKey(name: 'sell_date') int sellDate,
      @JsonKey(name: 'seller_name') String sellerName,
      @JsonKey(name: 'stack_size') int stackSize});
}

/// @nodoc
class __$PlayerAuctionHouseItemCopyWithImpl<$Res>
    extends _$PlayerAuctionHouseItemCopyWithImpl<$Res>
    implements _$PlayerAuctionHouseItemCopyWith<$Res> {
  __$PlayerAuctionHouseItemCopyWithImpl(_PlayerAuctionHouseItem _value,
      $Res Function(_PlayerAuctionHouseItem) _then)
      : super(_value, (v) => _then(v as _PlayerAuctionHouseItem));

  @override
  _PlayerAuctionHouseItem get _value => super._value as _PlayerAuctionHouseItem;

  @override
  $Res call({
    Object buyerName = freezed,
    Object name = freezed,
    Object sale = freezed,
    Object sellDate = freezed,
    Object sellerName = freezed,
    Object stackSize = freezed,
  }) {
    return _then(_PlayerAuctionHouseItem(
      buyerName: buyerName == freezed ? _value.buyerName : buyerName as String,
      name: name == freezed ? _value.name : name as String,
      sale: sale == freezed ? _value.sale : sale as int,
      sellDate: sellDate == freezed ? _value.sellDate : sellDate as int,
      sellerName:
          sellerName == freezed ? _value.sellerName : sellerName as String,
      stackSize: stackSize == freezed ? _value.stackSize : stackSize as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PlayerAuctionHouseItem extends _PlayerAuctionHouseItem {
  _$_PlayerAuctionHouseItem(
      {@JsonKey(name: 'buyer_name') this.buyerName,
      this.name,
      this.sale,
      @JsonKey(name: 'sell_date') this.sellDate,
      @JsonKey(name: 'seller_name') this.sellerName,
      @JsonKey(name: 'stack_size') this.stackSize})
      : super._();

  factory _$_PlayerAuctionHouseItem.fromJson(Map<String, dynamic> json) =>
      _$_$_PlayerAuctionHouseItemFromJson(json);

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
  @JsonKey(name: 'stack_size')
  final int stackSize;

  @override
  String toString() {
    return 'PlayerAuctionHouseItem(buyerName: $buyerName, name: $name, sale: $sale, sellDate: $sellDate, sellerName: $sellerName, stackSize: $stackSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlayerAuctionHouseItem &&
            (identical(other.buyerName, buyerName) ||
                const DeepCollectionEquality()
                    .equals(other.buyerName, buyerName)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.sale, sale) ||
                const DeepCollectionEquality().equals(other.sale, sale)) &&
            (identical(other.sellDate, sellDate) ||
                const DeepCollectionEquality()
                    .equals(other.sellDate, sellDate)) &&
            (identical(other.sellerName, sellerName) ||
                const DeepCollectionEquality()
                    .equals(other.sellerName, sellerName)) &&
            (identical(other.stackSize, stackSize) ||
                const DeepCollectionEquality()
                    .equals(other.stackSize, stackSize)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(buyerName) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(sale) ^
      const DeepCollectionEquality().hash(sellDate) ^
      const DeepCollectionEquality().hash(sellerName) ^
      const DeepCollectionEquality().hash(stackSize);

  @override
  _$PlayerAuctionHouseItemCopyWith<_PlayerAuctionHouseItem> get copyWith =>
      __$PlayerAuctionHouseItemCopyWithImpl<_PlayerAuctionHouseItem>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlayerAuctionHouseItemToJson(this);
  }
}

abstract class _PlayerAuctionHouseItem extends PlayerAuctionHouseItem {
  _PlayerAuctionHouseItem._() : super._();
  factory _PlayerAuctionHouseItem(
      {@JsonKey(name: 'buyer_name') String buyerName,
      String name,
      int sale,
      @JsonKey(name: 'sell_date') int sellDate,
      @JsonKey(name: 'seller_name') String sellerName,
      @JsonKey(name: 'stack_size') int stackSize}) = _$_PlayerAuctionHouseItem;

  factory _PlayerAuctionHouseItem.fromJson(Map<String, dynamic> json) =
      _$_PlayerAuctionHouseItem.fromJson;

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
  @JsonKey(name: 'stack_size')
  int get stackSize;
  @override
  _$PlayerAuctionHouseItemCopyWith<_PlayerAuctionHouseItem> get copyWith;
}
