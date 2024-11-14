// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checklist.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChecklistCollection on Isar {
  IsarCollection<Checklist> get checklists => this.collection();
}

const ChecklistSchema = CollectionSchema(
  name: r'Checklist',
  id: 2111955095109499340,
  properties: {
    r'aramcoChecklistCode': PropertySchema(
      id: 0,
      name: r'aramcoChecklistCode',
      type: IsarType.string,
    ),
    r'checklistId': PropertySchema(
      id: 1,
      name: r'checklistId',
      type: IsarType.long,
    ),
    r'checklistTestCode': PropertySchema(
      id: 2,
      name: r'checklistTestCode',
      type: IsarType.string,
    ),
    r'checklistTitle': PropertySchema(
      id: 3,
      name: r'checklistTitle',
      type: IsarType.string,
    ),
    r'standard': PropertySchema(
      id: 4,
      name: r'standard',
      type: IsarType.string,
    )
  },
  estimateSize: _checklistEstimateSize,
  serialize: _checklistSerialize,
  deserialize: _checklistDeserialize,
  deserializeProp: _checklistDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _checklistGetId,
  getLinks: _checklistGetLinks,
  attach: _checklistAttach,
  version: '3.1.0+1',
);

int _checklistEstimateSize(
  Checklist object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.aramcoChecklistCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.checklistTestCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.checklistTitle;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.standard;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _checklistSerialize(
  Checklist object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.aramcoChecklistCode);
  writer.writeLong(offsets[1], object.checklistId);
  writer.writeString(offsets[2], object.checklistTestCode);
  writer.writeString(offsets[3], object.checklistTitle);
  writer.writeString(offsets[4], object.standard);
}

Checklist _checklistDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Checklist(
    aramcoChecklistCode: reader.readStringOrNull(offsets[0]),
    checklistId: reader.readLongOrNull(offsets[1]),
    checklistTestCode: reader.readStringOrNull(offsets[2]),
    checklistTitle: reader.readStringOrNull(offsets[3]),
    standard: reader.readStringOrNull(offsets[4]),
  );
  object.id = id;
  return object;
}

P _checklistDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _checklistGetId(Checklist object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _checklistGetLinks(Checklist object) {
  return [];
}

void _checklistAttach(IsarCollection<dynamic> col, Id id, Checklist object) {
  object.id = id;
}

extension ChecklistQueryWhereSort
    on QueryBuilder<Checklist, Checklist, QWhere> {
  QueryBuilder<Checklist, Checklist, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ChecklistQueryWhere
    on QueryBuilder<Checklist, Checklist, QWhereClause> {
  QueryBuilder<Checklist, Checklist, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Checklist, Checklist, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterWhereClause> idBetween(
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

extension ChecklistQueryFilter
    on QueryBuilder<Checklist, Checklist, QFilterCondition> {
  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aramcoChecklistCode',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aramcoChecklistCode',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aramcoChecklistCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aramcoChecklistCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aramcoChecklistCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aramcoChecklistCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'aramcoChecklistCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'aramcoChecklistCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aramcoChecklistCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aramcoChecklistCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aramcoChecklistCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      aramcoChecklistCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aramcoChecklistCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checklistId',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checklistId',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> checklistIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
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

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> checklistIdLessThan(
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

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> checklistIdBetween(
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

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checklistTestCode',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checklistTestCode',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistTestCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checklistTestCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checklistTestCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checklistTestCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'checklistTestCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'checklistTestCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'checklistTestCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'checklistTestCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistTestCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTestCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'checklistTestCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checklistTitle',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checklistTitle',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'checklistTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'checklistTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'checklistTitle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'checklistTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'checklistTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'checklistTitle',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'checklistTitle',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      checklistTitleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'checklistTitle',
        value: '',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> standardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'standard',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      standardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'standard',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> standardEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'standard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> standardGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'standard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> standardLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'standard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> standardBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'standard',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> standardStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'standard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> standardEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'standard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> standardContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'standard',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> standardMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'standard',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition> standardIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'standard',
        value: '',
      ));
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterFilterCondition>
      standardIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'standard',
        value: '',
      ));
    });
  }
}

extension ChecklistQueryObject
    on QueryBuilder<Checklist, Checklist, QFilterCondition> {}

extension ChecklistQueryLinks
    on QueryBuilder<Checklist, Checklist, QFilterCondition> {}

extension ChecklistQuerySortBy on QueryBuilder<Checklist, Checklist, QSortBy> {
  QueryBuilder<Checklist, Checklist, QAfterSortBy> sortByAramcoChecklistCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoChecklistCode', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy>
      sortByAramcoChecklistCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoChecklistCode', Sort.desc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> sortByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> sortByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> sortByChecklistTestCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistTestCode', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy>
      sortByChecklistTestCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistTestCode', Sort.desc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> sortByChecklistTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistTitle', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> sortByChecklistTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistTitle', Sort.desc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> sortByStandard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standard', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> sortByStandardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standard', Sort.desc);
    });
  }
}

extension ChecklistQuerySortThenBy
    on QueryBuilder<Checklist, Checklist, QSortThenBy> {
  QueryBuilder<Checklist, Checklist, QAfterSortBy> thenByAramcoChecklistCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoChecklistCode', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy>
      thenByAramcoChecklistCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoChecklistCode', Sort.desc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> thenByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> thenByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> thenByChecklistTestCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistTestCode', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy>
      thenByChecklistTestCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistTestCode', Sort.desc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> thenByChecklistTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistTitle', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> thenByChecklistTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistTitle', Sort.desc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> thenByStandard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standard', Sort.asc);
    });
  }

  QueryBuilder<Checklist, Checklist, QAfterSortBy> thenByStandardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standard', Sort.desc);
    });
  }
}

extension ChecklistQueryWhereDistinct
    on QueryBuilder<Checklist, Checklist, QDistinct> {
  QueryBuilder<Checklist, Checklist, QDistinct> distinctByAramcoChecklistCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aramcoChecklistCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Checklist, Checklist, QDistinct> distinctByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checklistId');
    });
  }

  QueryBuilder<Checklist, Checklist, QDistinct> distinctByChecklistTestCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checklistTestCode',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Checklist, Checklist, QDistinct> distinctByChecklistTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checklistTitle',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Checklist, Checklist, QDistinct> distinctByStandard(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'standard', caseSensitive: caseSensitive);
    });
  }
}

extension ChecklistQueryProperty
    on QueryBuilder<Checklist, Checklist, QQueryProperty> {
  QueryBuilder<Checklist, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Checklist, String?, QQueryOperations>
      aramcoChecklistCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aramcoChecklistCode');
    });
  }

  QueryBuilder<Checklist, int?, QQueryOperations> checklistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checklistId');
    });
  }

  QueryBuilder<Checklist, String?, QQueryOperations>
      checklistTestCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checklistTestCode');
    });
  }

  QueryBuilder<Checklist, String?, QQueryOperations> checklistTitleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checklistTitle');
    });
  }

  QueryBuilder<Checklist, String?, QQueryOperations> standardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'standard');
    });
  }
}
