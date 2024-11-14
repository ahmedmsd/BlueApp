// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_list_item.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCheckListItemCollection on Isar {
  IsarCollection<CheckListItem> get checkListItems => this.collection();
}

const CheckListItemSchema = CollectionSchema(
  name: r'CheckListItem',
  id: -2646587760935006589,
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
  estimateSize: _checkListItemEstimateSize,
  serialize: _checkListItemSerialize,
  deserialize: _checkListItemDeserialize,
  deserializeProp: _checkListItemDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'certification': LinkSchema(
      id: -4112509766273231222,
      name: r'certification',
      target: r'Certification',
      single: true,
      linkName: r'checkListItems',
    )
  },
  embeddedSchemas: {},
  getId: _checkListItemGetId,
  getLinks: _checkListItemGetLinks,
  attach: _checkListItemAttach,
  version: '3.1.0+1',
);

int _checkListItemEstimateSize(
  CheckListItem object,
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

void _checkListItemSerialize(
  CheckListItem object,
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

CheckListItem _checkListItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CheckListItem(
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

P _checkListItemDeserializeProp<P>(
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

Id _checkListItemGetId(CheckListItem object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _checkListItemGetLinks(CheckListItem object) {
  return [object.certification];
}

void _checkListItemAttach(
    IsarCollection<dynamic> col, Id id, CheckListItem object) {
  object.id = id;
  object.certification
      .attach(col, col.isar.collection<Certification>(), r'certification', id);
}

extension CheckListItemQueryWhereSort
    on QueryBuilder<CheckListItem, CheckListItem, QWhere> {
  QueryBuilder<CheckListItem, CheckListItem, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CheckListItemQueryWhere
    on QueryBuilder<CheckListItem, CheckListItem, QWhereClause> {
  QueryBuilder<CheckListItem, CheckListItem, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterWhereClause> idBetween(
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

extension CheckListItemQueryFilter
    on QueryBuilder<CheckListItem, CheckListItem, QFilterCondition> {
  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      certificationIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'certificationId',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      certificationIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'certificationId',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      certificationIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'certificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      certificationIdGreaterThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      certificationIdLessThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      certificationIdBetween(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checklistId',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checklistId',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistIdGreaterThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistIdLessThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistIdBetween(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistItemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checklistItemId',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistItemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checklistItemId',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistItemIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistItemId',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistItemIdGreaterThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistItemIdLessThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      checklistItemIdBetween(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentEqualTo(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentGreaterThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentLessThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentBetween(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentStartsWith(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentEndsWith(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemTitle',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemTitle',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleEqualTo(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleGreaterThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleLessThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleBetween(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleStartsWith(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleEndsWith(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      itemTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      parentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parentId',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      parentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parentId',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      parentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentId',
        value: value,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      parentIdGreaterThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      parentIdLessThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      parentIdBetween(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'passFail',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'passFail',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailEqualTo(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailGreaterThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailLessThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailBetween(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailStartsWith(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailEndsWith(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'passFail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'passFail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passFail',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      passFailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'passFail',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reference',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reference',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceEqualTo(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceGreaterThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceLessThan(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceBetween(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceStartsWith(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceEndsWith(
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

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reference',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reference',
        value: '',
      ));
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      referenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reference',
        value: '',
      ));
    });
  }
}

extension CheckListItemQueryObject
    on QueryBuilder<CheckListItem, CheckListItem, QFilterCondition> {}

extension CheckListItemQueryLinks
    on QueryBuilder<CheckListItem, CheckListItem, QFilterCondition> {
  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      certification(FilterQuery<Certification> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'certification');
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterFilterCondition>
      certificationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'certification', 0, true, 0, true);
    });
  }
}

extension CheckListItemQuerySortBy
    on QueryBuilder<CheckListItem, CheckListItem, QSortBy> {
  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      sortByCertificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      sortByCertificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> sortByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      sortByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      sortByChecklistItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistItemId', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      sortByChecklistItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistItemId', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> sortByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> sortByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> sortByItemTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      sortByItemTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> sortByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      sortByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> sortByPassFail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passFail', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      sortByPassFailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passFail', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> sortByReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      sortByReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.desc);
    });
  }
}

extension CheckListItemQuerySortThenBy
    on QueryBuilder<CheckListItem, CheckListItem, QSortThenBy> {
  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      thenByCertificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      thenByCertificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> thenByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      thenByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      thenByChecklistItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistItemId', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      thenByChecklistItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistItemId', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> thenByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> thenByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> thenByItemTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      thenByItemTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> thenByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      thenByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> thenByPassFail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passFail', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      thenByPassFailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'passFail', Sort.desc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy> thenByReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.asc);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QAfterSortBy>
      thenByReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.desc);
    });
  }
}

extension CheckListItemQueryWhereDistinct
    on QueryBuilder<CheckListItem, CheckListItem, QDistinct> {
  QueryBuilder<CheckListItem, CheckListItem, QDistinct>
      distinctByCertificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'certificationId');
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QDistinct>
      distinctByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checklistId');
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QDistinct>
      distinctByChecklistItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checklistItemId');
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QDistinct> distinctByComment(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QDistinct> distinctByItemTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemTitle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QDistinct> distinctByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentId');
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QDistinct> distinctByPassFail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'passFail', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CheckListItem, CheckListItem, QDistinct> distinctByReference(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reference', caseSensitive: caseSensitive);
    });
  }
}

extension CheckListItemQueryProperty
    on QueryBuilder<CheckListItem, CheckListItem, QQueryProperty> {
  QueryBuilder<CheckListItem, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CheckListItem, int?, QQueryOperations>
      certificationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'certificationId');
    });
  }

  QueryBuilder<CheckListItem, int?, QQueryOperations> checklistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checklistId');
    });
  }

  QueryBuilder<CheckListItem, int?, QQueryOperations>
      checklistItemIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checklistItemId');
    });
  }

  QueryBuilder<CheckListItem, String?, QQueryOperations> commentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comment');
    });
  }

  QueryBuilder<CheckListItem, String?, QQueryOperations> itemTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemTitle');
    });
  }

  QueryBuilder<CheckListItem, int?, QQueryOperations> parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentId');
    });
  }

  QueryBuilder<CheckListItem, String?, QQueryOperations> passFailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'passFail');
    });
  }

  QueryBuilder<CheckListItem, String?, QQueryOperations> referenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reference');
    });
  }
}
