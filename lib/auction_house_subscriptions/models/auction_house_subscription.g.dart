// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_house_subscription.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetAuctionHouseSubscriptionCollection on Isar {
  IsarCollection<AuctionHouseSubscription> get auctionHouseSubscriptions =>
      getCollection();
}

const AuctionHouseSubscriptionSchema = CollectionSchema(
  name: 'AuctionHouseSubscription',
  schema:
      '{"name":"AuctionHouseSubscription","idName":"id","properties":[{"name":"playerName","type":"String"}],"indexes":[],"links":[{"name":"items","target":"AuctionHouseHistoryItem"}]}',
  idName: 'id',
  propertyIds: {'playerName': 0},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'items': 0},
  backlinkLinkNames: {},
  getId: _auctionHouseSubscriptionGetId,
  setId: _auctionHouseSubscriptionSetId,
  getLinks: _auctionHouseSubscriptionGetLinks,
  attachLinks: _auctionHouseSubscriptionAttachLinks,
  serializeNative: _auctionHouseSubscriptionSerializeNative,
  deserializeNative: _auctionHouseSubscriptionDeserializeNative,
  deserializePropNative: _auctionHouseSubscriptionDeserializePropNative,
  serializeWeb: _auctionHouseSubscriptionSerializeWeb,
  deserializeWeb: _auctionHouseSubscriptionDeserializeWeb,
  deserializePropWeb: _auctionHouseSubscriptionDeserializePropWeb,
  version: 3,
);

int? _auctionHouseSubscriptionGetId(AuctionHouseSubscription object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _auctionHouseSubscriptionSetId(AuctionHouseSubscription object, int id) {
  object.id = id;
}

List<IsarLinkBase> _auctionHouseSubscriptionGetLinks(
    AuctionHouseSubscription object) {
  return [object.items];
}

void _auctionHouseSubscriptionSerializeNative(
    IsarCollection<AuctionHouseSubscription> collection,
    IsarRawObject rawObj,
    AuctionHouseSubscription object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.playerName;
  final _playerName = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_playerName.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _playerName);
}

AuctionHouseSubscription _auctionHouseSubscriptionDeserializeNative(
    IsarCollection<AuctionHouseSubscription> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = AuctionHouseSubscription();
  object.id = id;
  object.playerName = reader.readString(offsets[0]);
  _auctionHouseSubscriptionAttachLinks(collection, id, object);
  return object;
}

P _auctionHouseSubscriptionDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _auctionHouseSubscriptionSerializeWeb(
    IsarCollection<AuctionHouseSubscription> collection,
    AuctionHouseSubscription object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'playerName', object.playerName);
  return jsObj;
}

AuctionHouseSubscription _auctionHouseSubscriptionDeserializeWeb(
    IsarCollection<AuctionHouseSubscription> collection, dynamic jsObj) {
  final object = AuctionHouseSubscription();
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.playerName = IsarNative.jsObjectGet(jsObj, 'playerName') ?? '';
  _auctionHouseSubscriptionAttachLinks(collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
  return object;
}

P _auctionHouseSubscriptionDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'playerName':
      return (IsarNative.jsObjectGet(jsObj, 'playerName') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _auctionHouseSubscriptionAttachLinks(
    IsarCollection col, int id, AuctionHouseSubscription object) {
  object.items.attach(col, col.isar.auctionHouseHistoryItems, 'items', id);
}

extension AuctionHouseSubscriptionQueryWhereSort on QueryBuilder<
    AuctionHouseSubscription, AuctionHouseSubscription, QWhere> {
  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QAfterWhere>
      anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension AuctionHouseSubscriptionQueryWhere on QueryBuilder<
    AuctionHouseSubscription, AuctionHouseSubscription, QWhereClause> {
  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterWhereClause> idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterWhereClause> idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension AuctionHouseSubscriptionQueryFilter on QueryBuilder<
    AuctionHouseSubscription, AuctionHouseSubscription, QFilterCondition> {
  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> playerNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> playerNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> playerNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> playerNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'playerName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> playerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> playerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
          QAfterFilterCondition>
      playerNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'playerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
          QAfterFilterCondition>
      playerNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'playerName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension AuctionHouseSubscriptionQueryLinks on QueryBuilder<
    AuctionHouseSubscription, AuctionHouseSubscription, QFilterCondition> {
  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription,
      QAfterFilterCondition> items(FilterQuery<AuctionHouseHistoryItem> q) {
    return linkInternal(
      isar.auctionHouseHistoryItems,
      q,
      'items',
    );
  }
}

extension AuctionHouseSubscriptionQueryWhereSortBy on QueryBuilder<
    AuctionHouseSubscription, AuctionHouseSubscription, QSortBy> {
  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QAfterSortBy>
      sortByPlayerName() {
    return addSortByInternal('playerName', Sort.asc);
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QAfterSortBy>
      sortByPlayerNameDesc() {
    return addSortByInternal('playerName', Sort.desc);
  }
}

extension AuctionHouseSubscriptionQueryWhereSortThenBy on QueryBuilder<
    AuctionHouseSubscription, AuctionHouseSubscription, QSortThenBy> {
  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QAfterSortBy>
      thenByPlayerName() {
    return addSortByInternal('playerName', Sort.asc);
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QAfterSortBy>
      thenByPlayerNameDesc() {
    return addSortByInternal('playerName', Sort.desc);
  }
}

extension AuctionHouseSubscriptionQueryWhereDistinct on QueryBuilder<
    AuctionHouseSubscription, AuctionHouseSubscription, QDistinct> {
  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<AuctionHouseSubscription, AuctionHouseSubscription, QDistinct>
      distinctByPlayerName({bool caseSensitive = true}) {
    return addDistinctByInternal('playerName', caseSensitive: caseSensitive);
  }
}

extension AuctionHouseSubscriptionQueryProperty on QueryBuilder<
    AuctionHouseSubscription, AuctionHouseSubscription, QQueryProperty> {
  QueryBuilder<AuctionHouseSubscription, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<AuctionHouseSubscription, String, QQueryOperations>
      playerNameProperty() {
    return addPropertyNameInternal('playerName');
  }
}
