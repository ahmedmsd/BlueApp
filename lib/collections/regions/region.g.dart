// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRegionCollection on Isar {
  IsarCollection<Region> get regions => this.collection();
}

const RegionSchema = CollectionSchema(
  name: r'Region',
  id: 8071854943712417412,
  properties: {
    r'coordinatorId': PropertySchema(
      id: 0,
      name: r'coordinatorId',
      type: IsarType.long,
    ),
    r'countryCode': PropertySchema(
      id: 1,
      name: r'countryCode',
      type: IsarType.string,
    ),
    r'enabled': PropertySchema(
      id: 2,
      name: r'enabled',
      type: IsarType.string,
    ),
    r'inspectionManager': PropertySchema(
      id: 3,
      name: r'inspectionManager',
      type: IsarType.long,
    ),
    r'regionId': PropertySchema(
      id: 4,
      name: r'regionId',
      type: IsarType.long,
    ),
    r'regionNameAr': PropertySchema(
      id: 5,
      name: r'regionNameAr',
      type: IsarType.string,
    ),
    r'regionNameEn': PropertySchema(
      id: 6,
      name: r'regionNameEn',
      type: IsarType.string,
    ),
    r'salesManager': PropertySchema(
      id: 7,
      name: r'salesManager',
      type: IsarType.long,
    ),
    r'supervisorId': PropertySchema(
      id: 8,
      name: r'supervisorId',
      type: IsarType.long,
    ),
    r'trCoordinatorId': PropertySchema(
      id: 9,
      name: r'trCoordinatorId',
      type: IsarType.long,
    ),
    r'trainingManager': PropertySchema(
      id: 10,
      name: r'trainingManager',
      type: IsarType.long,
    )
  },
  estimateSize: _regionEstimateSize,
  serialize: _regionSerialize,
  deserialize: _regionDeserialize,
  deserializeProp: _regionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _regionGetId,
  getLinks: _regionGetLinks,
  attach: _regionAttach,
  version: '3.1.0+1',
);

int _regionEstimateSize(
  Region object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.countryCode;
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
  {
    final value = object.regionNameAr;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.regionNameEn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _regionSerialize(
  Region object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.coordinatorId);
  writer.writeString(offsets[1], object.countryCode);
  writer.writeString(offsets[2], object.enabled);
  writer.writeLong(offsets[3], object.inspectionManager);
  writer.writeLong(offsets[4], object.regionId);
  writer.writeString(offsets[5], object.regionNameAr);
  writer.writeString(offsets[6], object.regionNameEn);
  writer.writeLong(offsets[7], object.salesManager);
  writer.writeLong(offsets[8], object.supervisorId);
  writer.writeLong(offsets[9], object.trCoordinatorId);
  writer.writeLong(offsets[10], object.trainingManager);
}

Region _regionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Region(
    coordinatorId: reader.readLongOrNull(offsets[0]),
    countryCode: reader.readStringOrNull(offsets[1]),
    enabled: reader.readStringOrNull(offsets[2]),
    inspectionManager: reader.readLongOrNull(offsets[3]),
    regionId: reader.readLongOrNull(offsets[4]),
    regionNameAr: reader.readStringOrNull(offsets[5]),
    regionNameEn: reader.readStringOrNull(offsets[6]),
    salesManager: reader.readLongOrNull(offsets[7]),
    supervisorId: reader.readLongOrNull(offsets[8]),
    trCoordinatorId: reader.readLongOrNull(offsets[9]),
    trainingManager: reader.readLongOrNull(offsets[10]),
  );
  object.id = id;
  return object;
}

P _regionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _regionGetId(Region object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _regionGetLinks(Region object) {
  return [];
}

void _regionAttach(IsarCollection<dynamic> col, Id id, Region object) {
  object.id = id;
}

extension RegionQueryWhereSort on QueryBuilder<Region, Region, QWhere> {
  QueryBuilder<Region, Region, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RegionQueryWhere on QueryBuilder<Region, Region, QWhereClause> {
  QueryBuilder<Region, Region, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Region, Region, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Region, Region, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Region, Region, QAfterWhereClause> idBetween(
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

extension RegionQueryFilter on QueryBuilder<Region, Region, QFilterCondition> {
  QueryBuilder<Region, Region, QAfterFilterCondition> coordinatorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'coordinatorId',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> coordinatorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'coordinatorId',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> coordinatorIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'coordinatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> coordinatorIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'coordinatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> coordinatorIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'coordinatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> coordinatorIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'coordinatorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'countryCode',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'countryCode',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'countryCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'countryCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'countryCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'countryCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> countryCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'countryCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'enabled',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'enabled',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledEqualTo(
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

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledGreaterThan(
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

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledLessThan(
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

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledBetween(
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

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledStartsWith(
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

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledEndsWith(
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

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledContains(
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

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledMatches(
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

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'enabled',
        value: '',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> enabledIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'enabled',
        value: '',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Region, Region, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Region, Region, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Region, Region, QAfterFilterCondition>
      inspectionManagerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'inspectionManager',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition>
      inspectionManagerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'inspectionManager',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> inspectionManagerEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inspectionManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition>
      inspectionManagerGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inspectionManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> inspectionManagerLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inspectionManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> inspectionManagerBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inspectionManager',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'regionId',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'regionId',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regionId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'regionId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'regionId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'regionId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'regionNameAr',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'regionNameAr',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regionNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'regionNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'regionNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'regionNameAr',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'regionNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'regionNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'regionNameAr',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'regionNameAr',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regionNameAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameArIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'regionNameAr',
        value: '',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'regionNameEn',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'regionNameEn',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regionNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'regionNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'regionNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'regionNameEn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'regionNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'regionNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'regionNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'regionNameEn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regionNameEn',
        value: '',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> regionNameEnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'regionNameEn',
        value: '',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> salesManagerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'salesManager',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> salesManagerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'salesManager',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> salesManagerEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salesManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> salesManagerGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'salesManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> salesManagerLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'salesManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> salesManagerBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'salesManager',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> supervisorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'supervisorId',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> supervisorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'supervisorId',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> supervisorIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supervisorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> supervisorIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'supervisorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> supervisorIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'supervisorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> supervisorIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'supervisorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> trCoordinatorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'trCoordinatorId',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition>
      trCoordinatorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'trCoordinatorId',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> trCoordinatorIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trCoordinatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition>
      trCoordinatorIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trCoordinatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> trCoordinatorIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trCoordinatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> trCoordinatorIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trCoordinatorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> trainingManagerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'trainingManager',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition>
      trainingManagerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'trainingManager',
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> trainingManagerEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trainingManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition>
      trainingManagerGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trainingManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> trainingManagerLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trainingManager',
        value: value,
      ));
    });
  }

  QueryBuilder<Region, Region, QAfterFilterCondition> trainingManagerBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trainingManager',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RegionQueryObject on QueryBuilder<Region, Region, QFilterCondition> {}

extension RegionQueryLinks on QueryBuilder<Region, Region, QFilterCondition> {}

extension RegionQuerySortBy on QueryBuilder<Region, Region, QSortBy> {
  QueryBuilder<Region, Region, QAfterSortBy> sortByCoordinatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coordinatorId', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByCoordinatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coordinatorId', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByCountryCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryCode', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByCountryCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryCode', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByInspectionManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionManager', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByInspectionManagerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionManager', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByRegionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByRegionNameAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionNameAr', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByRegionNameArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionNameAr', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByRegionNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionNameEn', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByRegionNameEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionNameEn', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortBySalesManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesManager', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortBySalesManagerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesManager', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortBySupervisorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supervisorId', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortBySupervisorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supervisorId', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByTrCoordinatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trCoordinatorId', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByTrCoordinatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trCoordinatorId', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByTrainingManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trainingManager', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> sortByTrainingManagerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trainingManager', Sort.desc);
    });
  }
}

extension RegionQuerySortThenBy on QueryBuilder<Region, Region, QSortThenBy> {
  QueryBuilder<Region, Region, QAfterSortBy> thenByCoordinatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coordinatorId', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByCoordinatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coordinatorId', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByCountryCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryCode', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByCountryCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'countryCode', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'enabled', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByInspectionManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionManager', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByInspectionManagerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionManager', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByRegionIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionId', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByRegionNameAr() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionNameAr', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByRegionNameArDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionNameAr', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByRegionNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionNameEn', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByRegionNameEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'regionNameEn', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenBySalesManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesManager', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenBySalesManagerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesManager', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenBySupervisorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supervisorId', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenBySupervisorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supervisorId', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByTrCoordinatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trCoordinatorId', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByTrCoordinatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trCoordinatorId', Sort.desc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByTrainingManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trainingManager', Sort.asc);
    });
  }

  QueryBuilder<Region, Region, QAfterSortBy> thenByTrainingManagerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trainingManager', Sort.desc);
    });
  }
}

extension RegionQueryWhereDistinct on QueryBuilder<Region, Region, QDistinct> {
  QueryBuilder<Region, Region, QDistinct> distinctByCoordinatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'coordinatorId');
    });
  }

  QueryBuilder<Region, Region, QDistinct> distinctByCountryCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'countryCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Region, Region, QDistinct> distinctByEnabled(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'enabled', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Region, Region, QDistinct> distinctByInspectionManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inspectionManager');
    });
  }

  QueryBuilder<Region, Region, QDistinct> distinctByRegionId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'regionId');
    });
  }

  QueryBuilder<Region, Region, QDistinct> distinctByRegionNameAr(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'regionNameAr', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Region, Region, QDistinct> distinctByRegionNameEn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'regionNameEn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Region, Region, QDistinct> distinctBySalesManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salesManager');
    });
  }

  QueryBuilder<Region, Region, QDistinct> distinctBySupervisorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supervisorId');
    });
  }

  QueryBuilder<Region, Region, QDistinct> distinctByTrCoordinatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trCoordinatorId');
    });
  }

  QueryBuilder<Region, Region, QDistinct> distinctByTrainingManager() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trainingManager');
    });
  }
}

extension RegionQueryProperty on QueryBuilder<Region, Region, QQueryProperty> {
  QueryBuilder<Region, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Region, int?, QQueryOperations> coordinatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'coordinatorId');
    });
  }

  QueryBuilder<Region, String?, QQueryOperations> countryCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'countryCode');
    });
  }

  QueryBuilder<Region, String?, QQueryOperations> enabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'enabled');
    });
  }

  QueryBuilder<Region, int?, QQueryOperations> inspectionManagerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inspectionManager');
    });
  }

  QueryBuilder<Region, int?, QQueryOperations> regionIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'regionId');
    });
  }

  QueryBuilder<Region, String?, QQueryOperations> regionNameArProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'regionNameAr');
    });
  }

  QueryBuilder<Region, String?, QQueryOperations> regionNameEnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'regionNameEn');
    });
  }

  QueryBuilder<Region, int?, QQueryOperations> salesManagerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salesManager');
    });
  }

  QueryBuilder<Region, int?, QQueryOperations> supervisorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supervisorId');
    });
  }

  QueryBuilder<Region, int?, QQueryOperations> trCoordinatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trCoordinatorId');
    });
  }

  QueryBuilder<Region, int?, QQueryOperations> trainingManagerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trainingManager');
    });
  }
}
