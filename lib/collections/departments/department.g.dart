// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDepartmentCollection on Isar {
  IsarCollection<Department> get departments => this.collection();
}

const DepartmentSchema = CollectionSchema(
  name: r'Department',
  id: -2990471549981954131,
  properties: {
    r'companyId': PropertySchema(
      id: 0,
      name: r'companyId',
      type: IsarType.long,
    ),
    r'departmentId': PropertySchema(
      id: 1,
      name: r'departmentId',
      type: IsarType.long,
    ),
    r'departmentNameAr': PropertySchema(
      id: 2,
      name: r'departmentNameAr',
      type: IsarType.string,
    ),
    r'departmentNameEn': PropertySchema(
      id: 3,
      name: r'departmentNameEn',
      type: IsarType.string,
    ),
    r'enabled': PropertySchema(
      id: 4,
      name: r'enabled',
      type: IsarType.string,
    ),
    r'parentId': PropertySchema(
      id: 5,
      name: r'parentId',
      type: IsarType.long,
    ),
    r'sortorder': PropertySchema(
      id: 6,
      name: r'sortorder',
      type: IsarType.long,
    )
  },
  estimateSize: _departmentEstimateSize,
  serialize: _departmentSerialize,
  deserialize: _departmentDeserialize,
  deserializeProp: _departmentDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _departmentGetId,
  getLinks: _departmentGetLinks,
  attach: _departmentAttach,
  version: '3.1.0+1',
);

int _departmentEstimateSize(
  Department object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.departmentNameAr;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.departmentNameEn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.enabled;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _departmentSerialize(
  Department object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.companyId);
  writer.writeLong(offsets[1], object.departmentId);
  writer.writeString(offsets[2], object.departmentNameAr);
  writer.writeString(offsets[3], object.departmentNameEn);
  writer.writeString(offsets[4], object.enabled);
  writer.writeLong(offsets[5], object.parentId);
  writer.writeLong(offsets[6], object.sortorder);
}

Department _departmentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Department(
    companyId: reader.readLongOrNull(offsets[0]),
    departmentId: reader.readLongOrNull(offsets[1]),
    departmentNameAr: reader.readStringOrNull(offsets[2]),
    departmentNameEn: reader.readStringOrNull(offsets[3]),
    enabled: reader.readStringOrNull(offsets[4]),
    parentId: reader.readLongOrNull(offsets[5]),
    sortorder: reader.readLongOrNull(offsets[6]),
  );
  object.id = id;
  return object;
}

P _departmentDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _departmentGetId(Department object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _departmentGetLinks(Department object) {
  return [];
}

void _departmentAttach(IsarCollection<dynamic> col, Id id, Department object) {
  object.id = id;
}

extension DepartmentQueryWhereSort
    on QueryBuilder<Department, Department, QWhere> {
  QueryBuilder<Department, Department, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DepartmentQueryWhere
    on QueryBuilder<Department, Department, QWhereClause> {
  QueryBuilder<Department, Department, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Department, Department, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Department, Department, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Department, Department, QAfterWhereClause> idBetween(
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

extension DepartmentQueryFilter
    on QueryBuilder<Department, Department, QFilterCondition> {
  QueryBuilder<Department, Department, QAfterFilterCondition>
      companyIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'companyId',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      companyIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'companyId',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> companyIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: value,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      companyIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'companyId',
        value: value,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> companyIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'companyId',
        value: value,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> companyIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'companyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'departmentId',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'departmentId',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'departmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'departmentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'departmentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'departmentNameAr',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'departmentNameAr',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departmentNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'departmentNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'departmentNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'departmentNameAr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'departmentNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'departmentNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'departmentNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'departmentNameAr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departmentNameAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'departmentNameAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'departmentNameEn',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'departmentNameEn',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departmentNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'departmentNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'departmentNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'departmentNameEn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'departmentNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'departmentNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'departmentNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'departmentNameEn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'departmentNameEn',
        value: '',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      departmentNameEnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'departmentNameEn',
        value: '',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> enabledIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'enabled',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      enabledIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'enabled',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> enabledEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enabled',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      enabledGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'enabled',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> enabledLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'enabled',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> enabledBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'enabled',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> enabledStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'enabled',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> enabledEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'enabled',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> enabledContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'enabled',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> enabledMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'enabled',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> enabledIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enabled',
        value: '',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      enabledIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'enabled',
        value: '',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Department, Department, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Department, Department, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Department, Department, QAfterFilterCondition> parentIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'parentId',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      parentIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'parentId',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> parentIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'parentId',
        value: value,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
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

  QueryBuilder<Department, Department, QAfterFilterCondition> parentIdLessThan(
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

  QueryBuilder<Department, Department, QAfterFilterCondition> parentIdBetween(
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

  QueryBuilder<Department, Department, QAfterFilterCondition>
      sortorderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sortorder',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
      sortorderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sortorder',
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition> sortorderEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sortorder',
        value: value,
      ));
    });
  }

  QueryBuilder<Department, Department, QAfterFilterCondition>
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

  QueryBuilder<Department, Department, QAfterFilterCondition> sortorderLessThan(
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

  QueryBuilder<Department, Department, QAfterFilterCondition> sortorderBetween(
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

extension DepartmentQueryObject
    on QueryBuilder<Department, Department, QFilterCondition> {}

extension DepartmentQueryLinks
    on QueryBuilder<Department, Department, QFilterCondition> {}

extension DepartmentQuerySortBy
    on QueryBuilder<Department, Department, QSortBy> {
  QueryBuilder<Department, Department, QAfterSortBy> sortByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortByDepartmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentId', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortByDepartmentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentId', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortByDepartmentNameAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentNameAr', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy>
      sortByDepartmentNameArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentNameAr', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortByDepartmentNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentNameEn', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy>
      sortByDepartmentNameEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentNameEn', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortByEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortBySortorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortorder', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> sortBySortorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortorder', Sort.desc);
    });
  }
}

extension DepartmentQuerySortThenBy
    on QueryBuilder<Department, Department, QSortThenBy> {
  QueryBuilder<Department, Department, QAfterSortBy> thenByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenByDepartmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentId', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenByDepartmentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentId', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenByDepartmentNameAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentNameAr', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy>
      thenByDepartmentNameArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentNameAr', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenByDepartmentNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentNameEn', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy>
      thenByDepartmentNameEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'departmentNameEn', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenByEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenByParentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'parentId', Sort.desc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenBySortorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortorder', Sort.asc);
    });
  }

  QueryBuilder<Department, Department, QAfterSortBy> thenBySortorderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sortorder', Sort.desc);
    });
  }
}

extension DepartmentQueryWhereDistinct
    on QueryBuilder<Department, Department, QDistinct> {
  QueryBuilder<Department, Department, QDistinct> distinctByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyId');
    });
  }

  QueryBuilder<Department, Department, QDistinct> distinctByDepartmentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'departmentId');
    });
  }

  QueryBuilder<Department, Department, QDistinct> distinctByDepartmentNameAr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'departmentNameAr',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Department, Department, QDistinct> distinctByDepartmentNameEn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'departmentNameEn',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Department, Department, QDistinct> distinctByEnabled(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enabled', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Department, Department, QDistinct> distinctByParentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'parentId');
    });
  }

  QueryBuilder<Department, Department, QDistinct> distinctBySortorder() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sortorder');
    });
  }
}

extension DepartmentQueryProperty
    on QueryBuilder<Department, Department, QQueryProperty> {
  QueryBuilder<Department, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Department, int?, QQueryOperations> companyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyId');
    });
  }

  QueryBuilder<Department, int?, QQueryOperations> departmentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'departmentId');
    });
  }

  QueryBuilder<Department, String?, QQueryOperations>
      departmentNameArProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'departmentNameAr');
    });
  }

  QueryBuilder<Department, String?, QQueryOperations>
      departmentNameEnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'departmentNameEn');
    });
  }

  QueryBuilder<Department, String?, QQueryOperations> enabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enabled');
    });
  }

  QueryBuilder<Department, int?, QQueryOperations> parentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'parentId');
    });
  }

  QueryBuilder<Department, int?, QQueryOperations> sortorderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sortorder');
    });
  }
}
