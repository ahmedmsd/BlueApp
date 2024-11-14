// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_jobs.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserJobsCollection on Isar {
  IsarCollection<UserJobs> get userJobs => this.collection();
}

const UserJobsSchema = CollectionSchema(
  name: r'UserJobs',
  id: 131466587874978549,
  properties: {
    r'iD': PropertySchema(
      id: 0,
      name: r'iD',
      type: IsarType.long,
    ),
    r'jobTitleId': PropertySchema(
      id: 1,
      name: r'jobTitleId',
      type: IsarType.long,
    ),
    r'userId': PropertySchema(
      id: 2,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _userJobsEstimateSize,
  serialize: _userJobsSerialize,
  deserialize: _userJobsDeserialize,
  deserializeProp: _userJobsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _userJobsGetId,
  getLinks: _userJobsGetLinks,
  attach: _userJobsAttach,
  version: '3.1.0+1',
);

int _userJobsEstimateSize(
  UserJobs object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _userJobsSerialize(
  UserJobs object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.iD);
  writer.writeLong(offsets[1], object.jobTitleId);
  writer.writeLong(offsets[2], object.userId);
}

UserJobs _userJobsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserJobs(
    iD: reader.readLongOrNull(offsets[0]),
    jobTitleId: reader.readLongOrNull(offsets[1]),
    userId: reader.readLongOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _userJobsDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userJobsGetId(UserJobs object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _userJobsGetLinks(UserJobs object) {
  return [];
}

void _userJobsAttach(IsarCollection<dynamic> col, Id id, UserJobs object) {
  object.id = id;
}

extension UserJobsQueryWhereSort on QueryBuilder<UserJobs, UserJobs, QWhere> {
  QueryBuilder<UserJobs, UserJobs, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserJobsQueryWhere on QueryBuilder<UserJobs, UserJobs, QWhereClause> {
  QueryBuilder<UserJobs, UserJobs, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<UserJobs, UserJobs, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterWhereClause> idBetween(
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

extension UserJobsQueryFilter
    on QueryBuilder<UserJobs, UserJobs, QFilterCondition> {
  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> iDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iD',
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> iDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iD',
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> iDEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iD',
        value: value,
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> iDGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'iD',
        value: value,
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> iDLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'iD',
        value: value,
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> iDBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'iD',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> idBetween(
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

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> jobTitleIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'jobTitleId',
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition>
      jobTitleIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'jobTitleId',
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> jobTitleIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jobTitleId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> jobTitleIdGreaterThan(
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

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> jobTitleIdLessThan(
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

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> jobTitleIdBetween(
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

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> userIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> userIdGreaterThan(
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

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> userIdLessThan(
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

  QueryBuilder<UserJobs, UserJobs, QAfterFilterCondition> userIdBetween(
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

extension UserJobsQueryObject
    on QueryBuilder<UserJobs, UserJobs, QFilterCondition> {}

extension UserJobsQueryLinks
    on QueryBuilder<UserJobs, UserJobs, QFilterCondition> {}

extension UserJobsQuerySortBy on QueryBuilder<UserJobs, UserJobs, QSortBy> {
  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> sortByID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iD', Sort.asc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> sortByIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iD', Sort.desc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> sortByJobTitleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobTitleId', Sort.asc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> sortByJobTitleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobTitleId', Sort.desc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UserJobsQuerySortThenBy
    on QueryBuilder<UserJobs, UserJobs, QSortThenBy> {
  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> thenByID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iD', Sort.asc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> thenByIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iD', Sort.desc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> thenByJobTitleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobTitleId', Sort.asc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> thenByJobTitleIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jobTitleId', Sort.desc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<UserJobs, UserJobs, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension UserJobsQueryWhereDistinct
    on QueryBuilder<UserJobs, UserJobs, QDistinct> {
  QueryBuilder<UserJobs, UserJobs, QDistinct> distinctByID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iD');
    });
  }

  QueryBuilder<UserJobs, UserJobs, QDistinct> distinctByJobTitleId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jobTitleId');
    });
  }

  QueryBuilder<UserJobs, UserJobs, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }
}

extension UserJobsQueryProperty
    on QueryBuilder<UserJobs, UserJobs, QQueryProperty> {
  QueryBuilder<UserJobs, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserJobs, int?, QQueryOperations> iDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iD');
    });
  }

  QueryBuilder<UserJobs, int?, QQueryOperations> jobTitleIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jobTitleId');
    });
  }

  QueryBuilder<UserJobs, int?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
