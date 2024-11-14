// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attached_photo.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAttachedPhotoCollection on Isar {
  IsarCollection<AttachedPhoto> get attachedPhotos => this.collection();
}

const AttachedPhotoSchema = CollectionSchema(
  name: r'AttachedPhoto',
  id: -8875296188913171185,
  properties: {
    r'attachedPhotoBytes': PropertySchema(
      id: 0,
      name: r'attachedPhotoBytes',
      type: IsarType.longList,
    ),
    r'certificationId': PropertySchema(
      id: 1,
      name: r'certificationId',
      type: IsarType.long,
    )
  },
  estimateSize: _attachedPhotoEstimateSize,
  serialize: _attachedPhotoSerialize,
  deserialize: _attachedPhotoDeserialize,
  deserializeProp: _attachedPhotoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'certification': LinkSchema(
      id: -2268335702204506674,
      name: r'certification',
      target: r'Certification',
      single: true,
      linkName: r'attachedPhotos',
    )
  },
  embeddedSchemas: {},
  getId: _attachedPhotoGetId,
  getLinks: _attachedPhotoGetLinks,
  attach: _attachedPhotoAttach,
  version: '3.1.0+1',
);

int _attachedPhotoEstimateSize(
  AttachedPhoto object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.attachedPhotoBytes.length * 8;
  return bytesCount;
}

void _attachedPhotoSerialize(
  AttachedPhoto object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLongList(offsets[0], object.attachedPhotoBytes);
  writer.writeLong(offsets[1], object.certificationId);
}

AttachedPhoto _attachedPhotoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AttachedPhoto(
    attachedPhotoBytes: reader.readLongList(offsets[0]) ?? [],
    certificationId: reader.readLong(offsets[1]),
  );
  object.id = id;
  return object;
}

P _attachedPhotoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongList(offset) ?? []) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _attachedPhotoGetId(AttachedPhoto object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _attachedPhotoGetLinks(AttachedPhoto object) {
  return [object.certification];
}

void _attachedPhotoAttach(
    IsarCollection<dynamic> col, Id id, AttachedPhoto object) {
  object.id = id;
  object.certification
      .attach(col, col.isar.collection<Certification>(), r'certification', id);
}

extension AttachedPhotoQueryWhereSort
    on QueryBuilder<AttachedPhoto, AttachedPhoto, QWhere> {
  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AttachedPhotoQueryWhere
    on QueryBuilder<AttachedPhoto, AttachedPhoto, QWhereClause> {
  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterWhereClause> idBetween(
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

extension AttachedPhotoQueryFilter
    on QueryBuilder<AttachedPhoto, AttachedPhoto, QFilterCondition> {
  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      attachedPhotoBytesElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'attachedPhotoBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      attachedPhotoBytesElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'attachedPhotoBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      attachedPhotoBytesElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'attachedPhotoBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      attachedPhotoBytesElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'attachedPhotoBytes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      attachedPhotoBytesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachedPhotoBytes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      attachedPhotoBytesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachedPhotoBytes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      attachedPhotoBytesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachedPhotoBytes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      attachedPhotoBytesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachedPhotoBytes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      attachedPhotoBytesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachedPhotoBytes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      attachedPhotoBytesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'attachedPhotoBytes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      certificationIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'certificationId',
        value: value,
      ));
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      certificationIdGreaterThan(
    int value, {
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

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      certificationIdLessThan(
    int value, {
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

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      certificationIdBetween(
    int lower,
    int upper, {
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

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
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

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition> idBetween(
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
}

extension AttachedPhotoQueryObject
    on QueryBuilder<AttachedPhoto, AttachedPhoto, QFilterCondition> {}

extension AttachedPhotoQueryLinks
    on QueryBuilder<AttachedPhoto, AttachedPhoto, QFilterCondition> {
  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      certification(FilterQuery<Certification> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'certification');
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterFilterCondition>
      certificationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'certification', 0, true, 0, true);
    });
  }
}

extension AttachedPhotoQuerySortBy
    on QueryBuilder<AttachedPhoto, AttachedPhoto, QSortBy> {
  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterSortBy>
      sortByCertificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.asc);
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterSortBy>
      sortByCertificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.desc);
    });
  }
}

extension AttachedPhotoQuerySortThenBy
    on QueryBuilder<AttachedPhoto, AttachedPhoto, QSortThenBy> {
  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterSortBy>
      thenByCertificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.asc);
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterSortBy>
      thenByCertificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationId', Sort.desc);
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension AttachedPhotoQueryWhereDistinct
    on QueryBuilder<AttachedPhoto, AttachedPhoto, QDistinct> {
  QueryBuilder<AttachedPhoto, AttachedPhoto, QDistinct>
      distinctByAttachedPhotoBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'attachedPhotoBytes');
    });
  }

  QueryBuilder<AttachedPhoto, AttachedPhoto, QDistinct>
      distinctByCertificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'certificationId');
    });
  }
}

extension AttachedPhotoQueryProperty
    on QueryBuilder<AttachedPhoto, AttachedPhoto, QQueryProperty> {
  QueryBuilder<AttachedPhoto, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AttachedPhoto, List<int>, QQueryOperations>
      attachedPhotoBytesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'attachedPhotoBytes');
    });
  }

  QueryBuilder<AttachedPhoto, int, QQueryOperations> certificationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'certificationId');
    });
  }
}
