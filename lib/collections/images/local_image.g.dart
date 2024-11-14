// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_image.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLocalImageCollection on Isar {
  IsarCollection<LocalImage> get localImages => this.collection();
}

const LocalImageSchema = CollectionSchema(
  name: r'LocalImage',
  id: 2882853044122181324,
  properties: {
    r'imageBytes': PropertySchema(
      id: 0,
      name: r'imageBytes',
      type: IsarType.longList,
    ),
    r'imageName': PropertySchema(
      id: 1,
      name: r'imageName',
      type: IsarType.string,
    ),
    r'woId': PropertySchema(
      id: 2,
      name: r'woId',
      type: IsarType.long,
    )
  },
  estimateSize: _localImageEstimateSize,
  serialize: _localImageSerialize,
  deserialize: _localImageDeserialize,
  deserializeProp: _localImageDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _localImageGetId,
  getLinks: _localImageGetLinks,
  attach: _localImageAttach,
  version: '3.1.0+1',
);

int _localImageEstimateSize(
  LocalImage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.imageBytes.length * 8;
  {
    final value = object.imageName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _localImageSerialize(
  LocalImage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLongList(offsets[0], object.imageBytes);
  writer.writeString(offsets[1], object.imageName);
  writer.writeLong(offsets[2], object.woId);
}

LocalImage _localImageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LocalImage(
    imageBytes: reader.readLongList(offsets[0]) ?? [],
    imageName: reader.readStringOrNull(offsets[1]),
    woId: reader.readLongOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _localImageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongList(offset) ?? []) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _localImageGetId(LocalImage object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _localImageGetLinks(LocalImage object) {
  return [];
}

void _localImageAttach(IsarCollection<dynamic> col, Id id, LocalImage object) {
  object.id = id;
}

extension LocalImageQueryWhereSort
    on QueryBuilder<LocalImage, LocalImage, QWhere> {
  QueryBuilder<LocalImage, LocalImage, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LocalImageQueryWhere
    on QueryBuilder<LocalImage, LocalImage, QWhereClause> {
  QueryBuilder<LocalImage, LocalImage, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<LocalImage, LocalImage, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterWhereClause> idBetween(
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

extension LocalImageQueryFilter
    on QueryBuilder<LocalImage, LocalImage, QFilterCondition> {
  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> idBetween(
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

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageBytesElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageBytesElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageBytesElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageBytesElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageBytes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageBytesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageBytes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageBytesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageBytes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageBytesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageBytes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageBytesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageBytes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageBytesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageBytes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageBytesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'imageBytes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageName',
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageName',
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> imageNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> imageNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> imageNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> imageNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> imageNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> imageNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageName',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition>
      imageNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageName',
        value: '',
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> woIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'woId',
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> woIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'woId',
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> woIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'woId',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> woIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'woId',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> woIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'woId',
        value: value,
      ));
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterFilterCondition> woIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'woId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LocalImageQueryObject
    on QueryBuilder<LocalImage, LocalImage, QFilterCondition> {}

extension LocalImageQueryLinks
    on QueryBuilder<LocalImage, LocalImage, QFilterCondition> {}

extension LocalImageQuerySortBy
    on QueryBuilder<LocalImage, LocalImage, QSortBy> {
  QueryBuilder<LocalImage, LocalImage, QAfterSortBy> sortByImageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.asc);
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterSortBy> sortByImageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.desc);
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterSortBy> sortByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.asc);
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterSortBy> sortByWoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.desc);
    });
  }
}

extension LocalImageQuerySortThenBy
    on QueryBuilder<LocalImage, LocalImage, QSortThenBy> {
  QueryBuilder<LocalImage, LocalImage, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterSortBy> thenByImageName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.asc);
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterSortBy> thenByImageNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'imageName', Sort.desc);
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterSortBy> thenByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.asc);
    });
  }

  QueryBuilder<LocalImage, LocalImage, QAfterSortBy> thenByWoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.desc);
    });
  }
}

extension LocalImageQueryWhereDistinct
    on QueryBuilder<LocalImage, LocalImage, QDistinct> {
  QueryBuilder<LocalImage, LocalImage, QDistinct> distinctByImageBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageBytes');
    });
  }

  QueryBuilder<LocalImage, LocalImage, QDistinct> distinctByImageName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'imageName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LocalImage, LocalImage, QDistinct> distinctByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'woId');
    });
  }
}

extension LocalImageQueryProperty
    on QueryBuilder<LocalImage, LocalImage, QQueryProperty> {
  QueryBuilder<LocalImage, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LocalImage, List<int>, QQueryOperations> imageBytesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageBytes');
    });
  }

  QueryBuilder<LocalImage, String?, QQueryOperations> imageNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageName');
    });
  }

  QueryBuilder<LocalImage, int?, QQueryOperations> woIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'woId');
    });
  }
}
