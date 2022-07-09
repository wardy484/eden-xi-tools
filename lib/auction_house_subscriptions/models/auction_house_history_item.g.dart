// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_house_history_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetAuctionHouseHistoryItemCollection on Isar {
  IsarCollection<AuctionHouseHistoryItem> get auctionHouseHistoryItems =>
      getCollection();
}

const AuctionHouseHistoryItemSchema = CollectionSchema(
  name: 'AuctionHouseHistoryItem',
  schema:
      '{"name":"AuctionHouseHistoryItem","idName":"id","properties":[{"name":"buyerName","type":"String"},{"name":"name","type":"String"},{"name":"salel","type":"Long"},{"name":"sellDate","type":"Long"},{"name":"sellerName","type":"String"},{"name":"stackSize","type":"String"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'buyerName': 0,
    'name': 1,
    'salel': 2,
    'sellDate': 3,
    'sellerName': 4,
    'stackSize': 5
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _auctionHouseHistoryItemGetId,
  setId: _auctionHouseHistoryItemSetId,
  getLinks: _auctionHouseHistoryItemGetLinks,
  attachLinks: _auctionHouseHistoryItemAttachLinks,
  serializeNative: _auctionHouseHistoryItemSerializeNative,
  deserializeNative: _auctionHouseHistoryItemDeserializeNative,
  deserializePropNative: _auctionHouseHistoryItemDeserializePropNative,
  serializeWeb: _auctionHouseHistoryItemSerializeWeb,
  deserializeWeb: _auctionHouseHistoryItemDeserializeWeb,
  deserializePropWeb: _auctionHouseHistoryItemDeserializePropWeb,
  version: 3,
);

int? _auctionHouseHistoryItemGetId(AuctionHouseHistoryItem object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _auctionHouseHistoryItemSetId(AuctionHouseHistoryItem object, int id) {
  object.id = id;
}

List<IsarLinkBase> _auctionHouseHistoryItemGetLinks(
    AuctionHouseHistoryItem object) {
  return [];
}

void _auctionHouseHistoryItemSerializeNative(
    IsarCollection<AuctionHouseHistoryItem> collection,
    IsarRawObject rawObj,
    AuctionHouseHistoryItem object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.buyerName;
  final _buyerName = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_buyerName.length) as int;
  final value1 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_name.length) as int;
  final value2 = object.salel;
  final _salel = value2;
  final value3 = object.sellDate;
  final _sellDate = value3;
  final value4 = object.sellerName;
  final _sellerName = IsarBinaryWriter.utf8Encoder.convert(value4);
  dynamicSize += (_sellerName.length) as int;
  final value5 = object.stackSize;
  final _stackSize = IsarBinaryWriter.utf8Encoder.convert(value5);
  dynamicSize += (_stackSize.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _buyerName);
  writer.writeBytes(offsets[1], _name);
  writer.writeLong(offsets[2], _salel);
  writer.writeLong(offsets[3], _sellDate);
  writer.writeBytes(offsets[4], _sellerName);
  writer.writeBytes(offsets[5], _stackSize);
}

AuctionHouseHistoryItem _auctionHouseHistoryItemDeserializeNative(
    IsarCollection<AuctionHouseHistoryItem> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = AuctionHouseHistoryItem();
  object.buyerName = reader.readString(offsets[0]);
  object.id = id;
  object.name = reader.readString(offsets[1]);
  object.salel = reader.readLong(offsets[2]);
  object.sellDate = reader.readLong(offsets[3]);
  object.sellerName = reader.readString(offsets[4]);
  object.stackSize = reader.readString(offsets[5]);
  return object;
}

P _auctionHouseHistoryItemDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _auctionHouseHistoryItemSerializeWeb(
    IsarCollection<AuctionHouseHistoryItem> collection,
    AuctionHouseHistoryItem object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'buyerName', object.buyerName);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'salel', object.salel);
  IsarNative.jsObjectSet(jsObj, 'sellDate', object.sellDate);
  IsarNative.jsObjectSet(jsObj, 'sellerName', object.sellerName);
  IsarNative.jsObjectSet(jsObj, 'stackSize', object.stackSize);
  return jsObj;
}

AuctionHouseHistoryItem _auctionHouseHistoryItemDeserializeWeb(
    IsarCollection<AuctionHouseHistoryItem> collection, dynamic jsObj) {
  final object = AuctionHouseHistoryItem();
  object.buyerName = IsarNative.jsObjectGet(jsObj, 'buyerName') ?? '';
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  object.salel =
      IsarNative.jsObjectGet(jsObj, 'salel') ?? double.negativeInfinity;
  object.sellDate =
      IsarNative.jsObjectGet(jsObj, 'sellDate') ?? double.negativeInfinity;
  object.sellerName = IsarNative.jsObjectGet(jsObj, 'sellerName') ?? '';
  object.stackSize = IsarNative.jsObjectGet(jsObj, 'stackSize') ?? '';
  return object;
}

P _auctionHouseHistoryItemDeserializePropWeb<P>(
    Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'buyerName':
      return (IsarNative.jsObjectGet(jsObj, 'buyerName') ?? '') as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'salel':
      return (IsarNative.jsObjectGet(jsObj, 'salel') ?? double.negativeInfinity)
          as P;
    case 'sellDate':
      return (IsarNative.jsObjectGet(jsObj, 'sellDate') ??
          double.negativeInfinity) as P;
    case 'sellerName':
      return (IsarNative.jsObjectGet(jsObj, 'sellerName') ?? '') as P;
    case 'stackSize':
      return (IsarNative.jsObjectGet(jsObj, 'stackSize') ?? '') as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _auctionHouseHistoryItemAttachLinks(
    IsarCollection col, int id, AuctionHouseHistoryItem object) {}

extension AuctionHouseHistoryItemQueryWhereSort
    on QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QWhere> {
  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterWhere>
      anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension AuctionHouseHistoryItemQueryWhere on QueryBuilder<
    AuctionHouseHistoryItem, AuctionHouseHistoryItem, QWhereClause> {
  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
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

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterWhereClause> idGreaterThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterWhereClause> idLessThan(int id, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
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

extension AuctionHouseHistoryItemQueryFilter on QueryBuilder<
    AuctionHouseHistoryItem, AuctionHouseHistoryItem, QFilterCondition> {
  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> buyerNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'buyerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> buyerNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'buyerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> buyerNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'buyerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> buyerNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'buyerName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> buyerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'buyerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> buyerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'buyerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
          QAfterFilterCondition>
      buyerNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'buyerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
          QAfterFilterCondition>
      buyerNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'buyerName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
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

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
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

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
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

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> salelEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'salel',
      value: value,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> salelGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'salel',
      value: value,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> salelLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'salel',
      value: value,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> salelBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'salel',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> sellDateEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'sellDate',
      value: value,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> sellDateGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'sellDate',
      value: value,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> sellDateLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'sellDate',
      value: value,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> sellDateBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'sellDate',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> sellerNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'sellerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> sellerNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'sellerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> sellerNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'sellerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> sellerNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'sellerName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> sellerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'sellerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> sellerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'sellerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
          QAfterFilterCondition>
      sellerNameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'sellerName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
          QAfterFilterCondition>
      sellerNameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'sellerName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> stackSizeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stackSize',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> stackSizeGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'stackSize',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> stackSizeLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'stackSize',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> stackSizeBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'stackSize',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> stackSizeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'stackSize',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
      QAfterFilterCondition> stackSizeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'stackSize',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
          QAfterFilterCondition>
      stackSizeContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'stackSize',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem,
          QAfterFilterCondition>
      stackSizeMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'stackSize',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension AuctionHouseHistoryItemQueryLinks on QueryBuilder<
    AuctionHouseHistoryItem, AuctionHouseHistoryItem, QFilterCondition> {}

extension AuctionHouseHistoryItemQueryWhereSortBy
    on QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QSortBy> {
  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortByBuyerName() {
    return addSortByInternal('buyerName', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortByBuyerNameDesc() {
    return addSortByInternal('buyerName', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortBySalel() {
    return addSortByInternal('salel', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortBySalelDesc() {
    return addSortByInternal('salel', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortBySellDate() {
    return addSortByInternal('sellDate', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortBySellDateDesc() {
    return addSortByInternal('sellDate', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortBySellerName() {
    return addSortByInternal('sellerName', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortBySellerNameDesc() {
    return addSortByInternal('sellerName', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortByStackSize() {
    return addSortByInternal('stackSize', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      sortByStackSizeDesc() {
    return addSortByInternal('stackSize', Sort.desc);
  }
}

extension AuctionHouseHistoryItemQueryWhereSortThenBy on QueryBuilder<
    AuctionHouseHistoryItem, AuctionHouseHistoryItem, QSortThenBy> {
  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenByBuyerName() {
    return addSortByInternal('buyerName', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenByBuyerNameDesc() {
    return addSortByInternal('buyerName', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenBySalel() {
    return addSortByInternal('salel', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenBySalelDesc() {
    return addSortByInternal('salel', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenBySellDate() {
    return addSortByInternal('sellDate', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenBySellDateDesc() {
    return addSortByInternal('sellDate', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenBySellerName() {
    return addSortByInternal('sellerName', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenBySellerNameDesc() {
    return addSortByInternal('sellerName', Sort.desc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenByStackSize() {
    return addSortByInternal('stackSize', Sort.asc);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QAfterSortBy>
      thenByStackSizeDesc() {
    return addSortByInternal('stackSize', Sort.desc);
  }
}

extension AuctionHouseHistoryItemQueryWhereDistinct on QueryBuilder<
    AuctionHouseHistoryItem, AuctionHouseHistoryItem, QDistinct> {
  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QDistinct>
      distinctByBuyerName({bool caseSensitive = true}) {
    return addDistinctByInternal('buyerName', caseSensitive: caseSensitive);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QDistinct>
      distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QDistinct>
      distinctByName({bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QDistinct>
      distinctBySalel() {
    return addDistinctByInternal('salel');
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QDistinct>
      distinctBySellDate() {
    return addDistinctByInternal('sellDate');
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QDistinct>
      distinctBySellerName({bool caseSensitive = true}) {
    return addDistinctByInternal('sellerName', caseSensitive: caseSensitive);
  }

  QueryBuilder<AuctionHouseHistoryItem, AuctionHouseHistoryItem, QDistinct>
      distinctByStackSize({bool caseSensitive = true}) {
    return addDistinctByInternal('stackSize', caseSensitive: caseSensitive);
  }
}

extension AuctionHouseHistoryItemQueryProperty on QueryBuilder<
    AuctionHouseHistoryItem, AuctionHouseHistoryItem, QQueryProperty> {
  QueryBuilder<AuctionHouseHistoryItem, String, QQueryOperations>
      buyerNameProperty() {
    return addPropertyNameInternal('buyerName');
  }

  QueryBuilder<AuctionHouseHistoryItem, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<AuctionHouseHistoryItem, String, QQueryOperations>
      nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<AuctionHouseHistoryItem, int, QQueryOperations> salelProperty() {
    return addPropertyNameInternal('salel');
  }

  QueryBuilder<AuctionHouseHistoryItem, int, QQueryOperations>
      sellDateProperty() {
    return addPropertyNameInternal('sellDate');
  }

  QueryBuilder<AuctionHouseHistoryItem, String, QQueryOperations>
      sellerNameProperty() {
    return addPropertyNameInternal('sellerName');
  }

  QueryBuilder<AuctionHouseHistoryItem, String, QQueryOperations>
      stackSizeProperty() {
    return addPropertyNameInternal('stackSize');
  }
}
