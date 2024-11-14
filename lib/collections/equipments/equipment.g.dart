// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'equipment.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetEquipmentCollection on Isar {
  IsarCollection<Equipment> get equipments => this.collection();
}

const EquipmentSchema = CollectionSchema(
  name: r'Equipment',
  id: -8369049013398099124,
  properties: {
    r'aramcoChecklistId': PropertySchema(
      id: 0,
      name: r'aramcoChecklistId',
      type: IsarType.long,
    ),
    r'categoryId': PropertySchema(
      id: 1,
      name: r'categoryId',
      type: IsarType.long,
    ),
    r'checklistId': PropertySchema(
      id: 2,
      name: r'checklistId',
      type: IsarType.long,
    ),
    r'enabled': PropertySchema(
      id: 3,
      name: r'enabled',
      type: IsarType.string,
    ),
    r'eqId': PropertySchema(
      id: 4,
      name: r'eqId',
      type: IsarType.long,
    ),
    r'eqName': PropertySchema(
      id: 5,
      name: r'eqName',
      type: IsarType.string,
    ),
    r'standard': PropertySchema(
      id: 6,
      name: r'standard',
      type: IsarType.string,
    )
  },
  estimateSize: _equipmentEstimateSize,
  serialize: _equipmentSerialize,
  deserialize: _equipmentDeserialize,
  deserializeProp: _equipmentDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _equipmentGetId,
  getLinks: _equipmentGetLinks,
  attach: _equipmentAttach,
  version: '3.1.0+1',
);

int _equipmentEstimateSize(
  Equipment object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.enabled;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.eqName;
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

void _equipmentSerialize(
  Equipment object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.aramcoChecklistId);
  writer.writeLong(offsets[1], object.categoryId);
  writer.writeLong(offsets[2], object.checklistId);
  writer.writeString(offsets[3], object.enabled);
  writer.writeLong(offsets[4], object.eqId);
  writer.writeString(offsets[5], object.eqName);
  writer.writeString(offsets[6], object.standard);
}

Equipment _equipmentDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Equipment(
    aramcoChecklistId: reader.readLongOrNull(offsets[0]),
    categoryId: reader.readLongOrNull(offsets[1]),
    checklistId: reader.readLongOrNull(offsets[2]),
    enabled: reader.readStringOrNull(offsets[3]),
    eqId: reader.readLongOrNull(offsets[4]),
    eqName: reader.readStringOrNull(offsets[5]),
    standard: reader.readStringOrNull(offsets[6]),
  );
  object.id = id;
  return object;
}

P _equipmentDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _equipmentGetId(Equipment object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _equipmentGetLinks(Equipment object) {
  return [];
}

void _equipmentAttach(IsarCollection<dynamic> col, Id id, Equipment object) {
  object.id = id;
}

extension EquipmentQueryWhereSort
    on QueryBuilder<Equipment, Equipment, QWhere> {
  QueryBuilder<Equipment, Equipment, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension EquipmentQueryWhere
    on QueryBuilder<Equipment, Equipment, QWhereClause> {
  QueryBuilder<Equipment, Equipment, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Equipment, Equipment, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterWhereClause> idBetween(
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

extension EquipmentQueryFilter
    on QueryBuilder<Equipment, Equipment, QFilterCondition> {
  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      aramcoChecklistIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aramcoChecklistId',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      aramcoChecklistIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aramcoChecklistId',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      aramcoChecklistIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aramcoChecklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      aramcoChecklistIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aramcoChecklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      aramcoChecklistIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aramcoChecklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      aramcoChecklistIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aramcoChecklistId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> categoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      categoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> categoryIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      categoryIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> categoryIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryId',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> categoryIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      checklistIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'checklistId',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      checklistIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'checklistId',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> checklistIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> checklistIdLessThan(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> checklistIdBetween(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'enabled',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'enabled',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledEqualTo(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledGreaterThan(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledLessThan(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledBetween(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledStartsWith(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledEndsWith(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledContains(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledMatches(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> enabledIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enabled',
        value: '',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      enabledIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'enabled',
        value: '',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eqId',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eqId',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqId',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eqId',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eqId',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eqId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'eqName',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'eqName',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eqName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eqName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eqName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eqName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eqName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eqName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eqName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqName',
        value: '',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> eqNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eqName',
        value: '',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> standardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'standard',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      standardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'standard',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> standardEqualTo(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> standardGreaterThan(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> standardLessThan(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> standardBetween(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> standardStartsWith(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> standardEndsWith(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> standardContains(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> standardMatches(
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

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition> standardIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'standard',
        value: '',
      ));
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterFilterCondition>
      standardIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'standard',
        value: '',
      ));
    });
  }
}

extension EquipmentQueryObject
    on QueryBuilder<Equipment, Equipment, QFilterCondition> {}

extension EquipmentQueryLinks
    on QueryBuilder<Equipment, Equipment, QFilterCondition> {}

extension EquipmentQuerySortBy on QueryBuilder<Equipment, Equipment, QSortBy> {
  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByAramcoChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoChecklistId', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy>
      sortByAramcoChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoChecklistId', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByEqId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqId', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByEqIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqId', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByEqName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqName', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByEqNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqName', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByStandard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standard', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> sortByStandardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standard', Sort.desc);
    });
  }
}

extension EquipmentQuerySortThenBy
    on QueryBuilder<Equipment, Equipment, QSortThenBy> {
  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByAramcoChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoChecklistId', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy>
      thenByAramcoChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoChecklistId', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByEqId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqId', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByEqIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqId', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByEqName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqName', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByEqNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqName', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByStandard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standard', Sort.asc);
    });
  }

  QueryBuilder<Equipment, Equipment, QAfterSortBy> thenByStandardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'standard', Sort.desc);
    });
  }
}

extension EquipmentQueryWhereDistinct
    on QueryBuilder<Equipment, Equipment, QDistinct> {
  QueryBuilder<Equipment, Equipment, QDistinct> distinctByAramcoChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aramcoChecklistId');
    });
  }

  QueryBuilder<Equipment, Equipment, QDistinct> distinctByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId');
    });
  }

  QueryBuilder<Equipment, Equipment, QDistinct> distinctByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checklistId');
    });
  }

  QueryBuilder<Equipment, Equipment, QDistinct> distinctByEnabled(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enabled', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Equipment, Equipment, QDistinct> distinctByEqId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eqId');
    });
  }

  QueryBuilder<Equipment, Equipment, QDistinct> distinctByEqName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eqName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Equipment, Equipment, QDistinct> distinctByStandard(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'standard', caseSensitive: caseSensitive);
    });
  }
}

extension EquipmentQueryProperty
    on QueryBuilder<Equipment, Equipment, QQueryProperty> {
  QueryBuilder<Equipment, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Equipment, int?, QQueryOperations> aramcoChecklistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aramcoChecklistId');
    });
  }

  QueryBuilder<Equipment, int?, QQueryOperations> categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<Equipment, int?, QQueryOperations> checklistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checklistId');
    });
  }

  QueryBuilder<Equipment, String?, QQueryOperations> enabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enabled');
    });
  }

  QueryBuilder<Equipment, int?, QQueryOperations> eqIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eqId');
    });
  }

  QueryBuilder<Equipment, String?, QQueryOperations> eqNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eqName');
    });
  }

  QueryBuilder<Equipment, String?, QQueryOperations> standardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'standard');
    });
  }
}
