// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserDetailsCollection on Isar {
  IsarCollection<UserDetails> get userDetails => this.collection();
}

const UserDetailsSchema = CollectionSchema(
  name: r'UserDetails',
  id: 5621512712545000939,
  properties: {
    r'badgeNo': PropertySchema(
      id: 0,
      name: r'badgeNo',
      type: IsarType.string,
    ),
    r'digitalSig': PropertySchema(
      id: 1,
      name: r'digitalSig',
      type: IsarType.string,
    ),
    r'email': PropertySchema(
      id: 2,
      name: r'email',
      type: IsarType.string,
    ),
    r'empCode': PropertySchema(
      id: 3,
      name: r'empCode',
      type: IsarType.long,
    ),
    r'fullNameEn': PropertySchema(
      id: 4,
      name: r'fullNameEn',
      type: IsarType.string,
    ),
    r'jobTitleId': PropertySchema(
      id: 5,
      name: r'jobTitleId',
      type: IsarType.long,
    ),
    r'mobile': PropertySchema(
      id: 6,
      name: r'mobile',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 7,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _userDetailsEstimateSize,
  serialize: _userDetailsSerialize,
  deserialize: _userDetailsDeserialize,
  deserializeProp: _userDetailsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userDetailsGetId,
  getLinks: _userDetailsGetLinks,
  attach: _userDetailsAttach,
  version: '3.1.0+1',
);

int _userDetailsEstimateSize(
  UserDetails object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.badgeNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.digitalSig;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fullNameEn;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mobile;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _userDetailsSerialize(
  UserDetails object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.badgeNo);
  writer.writeString(offsets[1], object.digitalSig);
  writer.writeString(offsets[2], object.email);
  writer.writeLong(offsets[3], object.empCode);
  writer.writeString(offsets[4], object.fullNameEn);
  writer.writeLong(offsets[5], object.jobTitleId);
  writer.writeString(offsets[6], object.mobile);
  writer.writeLong(offsets[7], object.userId);
}

UserDetails _userDetailsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserDetails(
    badgeNo: reader.readStringOrNull(offsets[0]),
    digitalSig: reader.readStringOrNull(offsets[1]),
    email: reader.readStringOrNull(offsets[2]),
    empCode: reader.readLongOrNull(offsets[3]),
    fullNameEn: reader.readStringOrNull(offsets[4]),
    jobTitleId: reader.readLongOrNull(offsets[5]),
    mobile: reader.readStringOrNull(offsets[6]),
    userId: reader.readLongOrNull(offsets[7]),
  );
  object.id = id;
  return object;
}

P _userDetailsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userDetailsGetId(UserDetails object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userDetailsGetLinks(UserDetails object) {
  return [];
}

void _userDetailsAttach(
    IsarCollection<dynamic> col, Id id, UserDetails object) {
  object.id = id;
}

extension UserDetailsQueryWhereSort
    on QueryBuilder<UserDetails, UserDetails, QWhere> {
  QueryBuilder<UserDetails, UserDetails, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserDetailsQueryWhere
    on QueryBuilder<UserDetails, UserDetails, QWhereClause> {
  QueryBuilder<UserDetails, UserDetails, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<UserDetails, UserDetails, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterWhereClause> idBetween(
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

extension UserDetailsQueryFilter
    on QueryBuilder<UserDetails, UserDetails, QFilterCondition> {
  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      badgeNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'badgeNo',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      badgeNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'badgeNo',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> badgeNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      badgeNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'badgeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> badgeNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'badgeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> badgeNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'badgeNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      badgeNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'badgeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> badgeNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'badgeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> badgeNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'badgeNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> badgeNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'badgeNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      badgeNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'badgeNo',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      badgeNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'badgeNo',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'digitalSig',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'digitalSig',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'digitalSig',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'digitalSig',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'digitalSig',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'digitalSig',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'digitalSig',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'digitalSig',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'digitalSig',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'digitalSig',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'digitalSig',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      digitalSigIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'digitalSig',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      empCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'empCode',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      empCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'empCode',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> empCodeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'empCode',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      empCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'empCode',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> empCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'empCode',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> empCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'empCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fullNameEn',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fullNameEn',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullNameEn',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullNameEn',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullNameEn',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullNameEn',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      fullNameEnIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullNameEn',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      jobTitleIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'jobTitleId',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      jobTitleIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'jobTitleId',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      jobTitleIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobTitleId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      jobTitleIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jobTitleId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      jobTitleIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jobTitleId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      jobTitleIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jobTitleId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> mobileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mobile',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      mobileIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mobile',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> mobileEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      mobileGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> mobileLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> mobileBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mobile',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      mobileStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> mobileEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> mobileContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> mobileMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mobile',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      mobileIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mobile',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      mobileIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mobile',
        value: '',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> userIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition>
      userIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> userIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterFilterCondition> userIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UserDetailsQueryObject
    on QueryBuilder<UserDetails, UserDetails, QFilterCondition> {}

extension UserDetailsQueryLinks
    on QueryBuilder<UserDetails, UserDetails, QFilterCondition> {}

extension UserDetailsQuerySortBy
    on QueryBuilder<UserDetails, UserDetails, QSortBy> {
  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByBadgeNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeNo', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByBadgeNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeNo', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByDigitalSig() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'digitalSig', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByDigitalSigDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'digitalSig', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByEmpCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCode', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByEmpCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCode', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByFullNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameEn', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByFullNameEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameEn', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByJobTitleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobTitleId', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByJobTitleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobTitleId', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UserDetailsQuerySortThenBy
    on QueryBuilder<UserDetails, UserDetails, QSortThenBy> {
  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByBadgeNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeNo', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByBadgeNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'badgeNo', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByDigitalSig() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'digitalSig', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByDigitalSigDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'digitalSig', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByEmpCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCode', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByEmpCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'empCode', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByFullNameEn() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameEn', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByFullNameEnDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullNameEn', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByJobTitleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobTitleId', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByJobTitleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobTitleId', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mobile', Sort.desc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UserDetailsQueryWhereDistinct
    on QueryBuilder<UserDetails, UserDetails, QDistinct> {
  QueryBuilder<UserDetails, UserDetails, QDistinct> distinctByBadgeNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'badgeNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QDistinct> distinctByDigitalSig(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'digitalSig', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QDistinct> distinctByEmpCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'empCode');
    });
  }

  QueryBuilder<UserDetails, UserDetails, QDistinct> distinctByFullNameEn(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullNameEn', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QDistinct> distinctByJobTitleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jobTitleId');
    });
  }

  QueryBuilder<UserDetails, UserDetails, QDistinct> distinctByMobile(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mobile', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserDetails, UserDetails, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }
}

extension UserDetailsQueryProperty
    on QueryBuilder<UserDetails, UserDetails, QQueryProperty> {
  QueryBuilder<UserDetails, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserDetails, String?, QQueryOperations> badgeNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'badgeNo');
    });
  }

  QueryBuilder<UserDetails, String?, QQueryOperations> digitalSigProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'digitalSig');
    });
  }

  QueryBuilder<UserDetails, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<UserDetails, int?, QQueryOperations> empCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'empCode');
    });
  }

  QueryBuilder<UserDetails, String?, QQueryOperations> fullNameEnProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullNameEn');
    });
  }

  QueryBuilder<UserDetails, int?, QQueryOperations> jobTitleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jobTitleId');
    });
  }

  QueryBuilder<UserDetails, String?, QQueryOperations> mobileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mobile');
    });
  }

  QueryBuilder<UserDetails, int?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
