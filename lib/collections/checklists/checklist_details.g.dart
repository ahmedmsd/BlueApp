// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist_details.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChecklistDetailsCollection on Isar {
  IsarCollection<ChecklistDetails> get checklistDetails => this.collection();
}

const ChecklistDetailsSchema = CollectionSchema(
  name: r'ChecklistDetails',
  id: -2521777243155377580,
  properties: {
    r'checklistId': PropertySchema(
      id: 0,
      name: r'checklistId',
      type: IsarType.long,
    ),
    r'itemId': PropertySchema(
      id: 1,
      name: r'itemId',
      type: IsarType.long,
    ),
    r'itemTitle': PropertySchema(
      id: 2,
      name: r'itemTitle',
      type: IsarType.string,
    ),
    r'parentId': PropertySchema(
      id: 3,
      name: r'parentId',
      type: IsarType.long,
    ),
    r'reference': PropertySchema(
      id: 4,
      name: r'reference',
      type: IsarType.string,
    ),
    r'sortorder': PropertySchema(
      id: 5,
      name: r'sortorder',
      type: IsarType.long,
    )
  },
  estimateSize: _checklistDetailsEstimateSize,
  serialize: _checklistDetailsSerialize,
  deserialize: _checklistDetailsDeserialize,
  deserializeProp: _checklistDetailsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _checklistDetailsGetId,
  getLinks: _checklistDetailsGetLinks,
  attach: _checklistDetailsAttach,
  version: '3.1.0+1',
);

int _checklistDetailsEstimateSize(
  ChecklistDetails object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.itemTitle;
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

void _checklistDetailsSerialize(
  ChecklistDetails object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.checklistId);
  writer.writeLong(offsets[1], object.itemId);
  writer.writeString(offsets[2], object.itemTitle);
  writer.writeLong(offsets[3], object.parentId);
  writer.writeString(offsets[4], object.reference);
  writer.writeLong(offsets[5], object.sortorder);
}

ChecklistDetails _checklistDetailsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChecklistDetails(
    checklistId: reader.readLongOrNull(offsets[0]),
    itemId: reader.readLongOrNull(offsets[1]),
    itemTitle: reader.readStringOrNull(offsets[2]),
    parentId: reader.readLongOrNull(offsets[3]),
    reference: reader.readStringOrNull(offsets[4]),
    sortorder: reader.readLongOrNull(offsets[5]),
  );
  object.id = id;
  return object;
}

P _checklistDetailsDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _checklistDetailsGetId(ChecklistDetails object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _checklistDetailsGetLinks(ChecklistDetails object) {
  return [];
}

void _checklistDetailsAttach(
    IsarCollection<dynamic> col, Id id, ChecklistDetails object) {
  object.id = id;
}

extension ChecklistDetailsQueryWhereSort
    on QueryBuilder<ChecklistDetails, ChecklistDetails, QWhere> {
  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ChecklistDetailsQueryWhere
    on QueryBuilder<ChecklistDetails, ChecklistDetails, QWhereClause> {
  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterWhereClause>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterWhereClause> idBetween(
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

extension ChecklistDetailsQueryFilter
    on QueryBuilder<ChecklistDetails, ChecklistDetails, QFilterCondition> {
  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      checklistIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checklistId',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      checklistIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checklistId',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      checklistIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemId',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'itemId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'itemId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'itemTitle',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'itemTitle',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'itemTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'itemTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'itemTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      itemTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'itemTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      parentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parentId',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      parentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parentId',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      parentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentId',
        value: value,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      referenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reference',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      referenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reference',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
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

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      referenceContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reference',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      referenceMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reference',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      referenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reference',
        value: '',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      referenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reference',
        value: '',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      sortorderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sortorder',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      sortorderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sortorder',
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      sortorderEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sortorder',
        value: value,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      sortorderGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sortorder',
        value: value,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      sortorderLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sortorder',
        value: value,
      ));
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterFilterCondition>
      sortorderBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sortorder',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ChecklistDetailsQueryObject
    on QueryBuilder<ChecklistDetails, ChecklistDetails, QFilterCondition> {}

extension ChecklistDetailsQueryLinks
    on QueryBuilder<ChecklistDetails, ChecklistDetails, QFilterCondition> {}

extension ChecklistDetailsQuerySortBy
    on QueryBuilder<ChecklistDetails, ChecklistDetails, QSortBy> {
  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortByItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortByItemTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortByItemTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortByReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortByReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortBySortorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortorder', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      sortBySortorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortorder', Sort.desc);
    });
  }
}

extension ChecklistDetailsQuerySortThenBy
    on QueryBuilder<ChecklistDetails, ChecklistDetails, QSortThenBy> {
  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByItemIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemId', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByItemTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByItemTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'itemTitle', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByReference() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenByReferenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reference', Sort.desc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenBySortorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortorder', Sort.asc);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QAfterSortBy>
      thenBySortorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortorder', Sort.desc);
    });
  }
}

extension ChecklistDetailsQueryWhereDistinct
    on QueryBuilder<ChecklistDetails, ChecklistDetails, QDistinct> {
  QueryBuilder<ChecklistDetails, ChecklistDetails, QDistinct>
      distinctByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checklistId');
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QDistinct>
      distinctByItemId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemId');
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QDistinct>
      distinctByItemTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'itemTitle', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QDistinct>
      distinctByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentId');
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QDistinct>
      distinctByReference({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reference', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChecklistDetails, ChecklistDetails, QDistinct>
      distinctBySortorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sortorder');
    });
  }
}

extension ChecklistDetailsQueryProperty
    on QueryBuilder<ChecklistDetails, ChecklistDetails, QQueryProperty> {
  QueryBuilder<ChecklistDetails, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ChecklistDetails, int?, QQueryOperations> checklistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checklistId');
    });
  }

  QueryBuilder<ChecklistDetails, int?, QQueryOperations> itemIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemId');
    });
  }

  QueryBuilder<ChecklistDetails, String?, QQueryOperations>
      itemTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'itemTitle');
    });
  }

  QueryBuilder<ChecklistDetails, int?, QQueryOperations> parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentId');
    });
  }

  QueryBuilder<ChecklistDetails, String?, QQueryOperations>
      referenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reference');
    });
  }

  QueryBuilder<ChecklistDetails, int?, QQueryOperations> sortorderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sortorder');
    });
  }
}
