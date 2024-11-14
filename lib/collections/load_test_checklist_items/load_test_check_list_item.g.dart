// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_test_check_list_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLoadTestCheckListItemCollection on Isar {
  IsarCollection<LoadTestCheckListItem> get loadTestCheckListItems =>
      this.collection();
}

const LoadTestCheckListItemSchema = CollectionSchema(
  name: r'LoadTestCheckListItem',
  id: 6420547899058105976,
  properties: {
    r'certificationId': PropertySchema(
      id: 0,
      name: r'certificationId',
      type: IsarType.long,
    ),
    r'checklistId': PropertySchema(
      id: 1,
      name: r'checklistId',
      type: IsarType.long,
    ),
    r'checklistItemId': PropertySchema(
      id: 2,
      name: r'checklistItemId',
      type: IsarType.long,
    ),
    r'comment': PropertySchema(
      id: 3,
      name: r'comment',
      type: IsarType.string,
    ),
    r'itemTitle': PropertySchema(
      id: 4,
      name: r'itemTitle',
      type: IsarType.string,
    ),
    r'parentId': PropertySchema(
      id: 5,
      name: r'parentId',
      type: IsarType.long,
    ),
    r'passFail': PropertySchema(
      id: 6,
      name: r'passFail',
      type: IsarType.string,
    ),
    r'reference': PropertySchema(
      id: 7,
      name: r'reference',
      type: IsarType.string,
    )
  },
  estimateSize: _loadTestCheckListItemEstimateSize,
  serialize: _loadTestCheckListItemSerialize,
  deserialize: _loadTestCheckListItemDeserialize,
  deserializeProp: _loadTestCheckListItemDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'certification': LinkSchema(
      id: -4273436280476136692,
      name: r'certification',
      target: r'Certification',
      single: true,
      linkName: r'loadTestCheckListItems',
    )
  },
  embeddedSchemas: {},
  getId: _loadTestCheckListItemGetId,
  getLinks: _loadTestCheckListItemGetLinks,
  attach: _loadTestCheckListItemAttach,
  version: '3.1.0+1',
);

int _loadTestCheckListItemEstimateSize(
  LoadTestCheckListItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.comment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.itemTitle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.passFail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.reference;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _loadTestCheckListItemSerialize(
  LoadTestCheckListItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.certificationId);
  writer.writeLong(offsets[1], object.checklistId);
  writer.writeLong(offsets[2], object.checklistItemId);
  writer.writeString(offsets[3], object.comment);
  writer.writeString(offsets[4], object.itemTitle);
  writer.writeLong(offsets[5], object.parentId);
  writer.writeString(offsets[6], object.passFail);
  writer.writeString(offsets[7], object.reference);
}

LoadTestCheckListItem _loadTestCheckListItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LoadTestCheckListItem(
    certificationId: reader.readLongOrNull(offsets[0]),
    checklistId: reader.readLongOrNull(offsets[1]),
    checklistItemId: reader.readLongOrNull(offsets[2]),
    comment: reader.readStringOrNull(offsets[3]),
    itemTitle: reader.readStringOrNull(offsets[4]),
    parentId: reader.readLongOrNull(offsets[5]),
    passFail: reader.readStringOrNull(offsets[6]),
    reference: reader.readStringOrNull(offsets[7]),
  );
  object.id = id;
  return object;
}

P _loadTestCheckListItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _loadTestCheckListItemGetId(LoadTestCheckListItem object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _loadTestCheckListItemGetLinks(
    LoadTestCheckListItem object) {
  return [object.certification];
}

void _loadTestCheckListItemAttach(
    IsarCollection<dynamic> col, Id id, LoadTestCheckListItem object) {
  object.id = id;
  object.certification
      .attach(col, col.isar.collection<Certification>(), r'certification', id);
}

extension LoadTestCheckListItemQueryWhereSort
    on QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QWhere> {
  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LoadTestCheckListItemQueryWhere on QueryBuilder<LoadTestCheckListItem,
    LoadTestCheckListItem, QWhereClause> {
  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LoadTestCheckListItemQueryFilter on QueryBuilder<
    LoadTestCheckListItem, LoadTestCheckListItem, QFilterCondition> {
  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> certificationIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'certificationId',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> certificationIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'certificationId',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> certificationIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'certificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> certificationIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'certificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> certificationIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'certificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> certificationIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'certificationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checklistId',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checklistId',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checklistId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistItemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checklistItemId',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistItemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checklistItemId',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistItemIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistItemId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistItemIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checklistItemId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistItemIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checklistItemId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> checklistItemIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checklistItemId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> commentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> commentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> commentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> commentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'comment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> commentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> commentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
          QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
          QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> itemTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemTitle',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> itemTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemTitle',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> itemTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> itemTitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> itemTitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> itemTitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> itemTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'itemTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> itemTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'itemTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
          QAfterFilterCondition>
      itemTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
          QAfterFilterCondition>
      itemTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> itemTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> itemTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> parentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parentId',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> parentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parentId',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> parentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> parentIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'parentId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> parentIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'parentId',
        value: value,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> parentIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'parentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> passFailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'passFail',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> passFailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'passFail',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> passFailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passFail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> passFailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'passFail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> passFailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'passFail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> passFailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'passFail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> passFailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'passFail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> passFailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'passFail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
          QAfterFilterCondition>
      passFailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'passFail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
          QAfterFilterCondition>
      passFailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'passFail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> passFailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passFail',
        value: '',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> passFailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'passFail',
        value: '',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> referenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reference',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> referenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reference',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> referenceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> referenceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> referenceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> referenceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reference',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> referenceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> referenceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
          QAfterFilterCondition>
      referenceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
          QAfterFilterCondition>
      referenceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reference',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> referenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reference',
        value: '',
      ));
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> referenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reference',
        value: '',
      ));
    });
  }
}

extension LoadTestCheckListItemQueryObject on QueryBuilder<
    LoadTestCheckListItem, LoadTestCheckListItem, QFilterCondition> {}

extension LoadTestCheckListItemQueryLinks on QueryBuilder<LoadTestCheckListItem,
    LoadTestCheckListItem, QFilterCondition> {
  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> certification(FilterQuery<Certification> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'certification');
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem,
      QAfterFilterCondition> certificationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'certification', 0, true, 0, true);
    });
  }
}

extension LoadTestCheckListItemQuerySortBy
    on QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QSortBy> {
  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByCertificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByCertificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByChecklistItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistItemId', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByChecklistItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistItemId', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByItemTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByItemTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByPassFail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passFail', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByPassFailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passFail', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      sortByReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.desc);
    });
  }
}

extension LoadTestCheckListItemQuerySortThenBy
    on QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QSortThenBy> {
  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByCertificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByCertificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByChecklistItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistItemId', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByChecklistItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistItemId', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByItemTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByItemTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByPassFail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passFail', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByPassFailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passFail', Sort.desc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.asc);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QAfterSortBy>
      thenByReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.desc);
    });
  }
}

extension LoadTestCheckListItemQueryWhereDistinct
    on QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QDistinct> {
  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QDistinct>
      distinctByCertificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'certificationId');
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QDistinct>
      distinctByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checklistId');
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QDistinct>
      distinctByChecklistItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checklistItemId');
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QDistinct>
      distinctByComment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QDistinct>
      distinctByItemTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemTitle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QDistinct>
      distinctByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentId');
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QDistinct>
      distinctByPassFail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'passFail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LoadTestCheckListItem, LoadTestCheckListItem, QDistinct>
      distinctByReference({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reference', caseSensitive: caseSensitive);
    });
  }
}

extension LoadTestCheckListItemQueryProperty on QueryBuilder<
    LoadTestCheckListItem, LoadTestCheckListItem, QQueryProperty> {
  QueryBuilder<LoadTestCheckListItem, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LoadTestCheckListItem, int?, QQueryOperations>
      certificationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'certificationId');
    });
  }

  QueryBuilder<LoadTestCheckListItem, int?, QQueryOperations>
      checklistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checklistId');
    });
  }

  QueryBuilder<LoadTestCheckListItem, int?, QQueryOperations>
      checklistItemIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checklistItemId');
    });
  }

  QueryBuilder<LoadTestCheckListItem, String?, QQueryOperations>
      commentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comment');
    });
  }

  QueryBuilder<LoadTestCheckListItem, String?, QQueryOperations>
      itemTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemTitle');
    });
  }

  QueryBuilder<LoadTestCheckListItem, int?, QQueryOperations>
      parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentId');
    });
  }

  QueryBuilder<LoadTestCheckListItem, String?, QQueryOperations>
      passFailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'passFail');
    });
  }

  QueryBuilder<LoadTestCheckListItem, String?, QQueryOperations>
      referenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reference');
    });
  }
}
