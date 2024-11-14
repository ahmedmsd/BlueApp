// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sticker.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetStickerCollection on Isar {
  IsarCollection<Sticker> get stickers => this.collection();
}

const StickerSchema = CollectionSchema(
  name: r'Sticker',
  id: 1934486934114473254,
  properties: {
    r'assignedBy': PropertySchema(
      id: 0,
      name: r'assignedBy',
      type: IsarType.long,
    ),
    r'assignedDate': PropertySchema(
      id: 1,
      name: r'assignedDate',
      type: IsarType.dateTime,
    ),
    r'assignedTo': PropertySchema(
      id: 2,
      name: r'assignedTo',
      type: IsarType.long,
    ),
    r'bookNo': PropertySchema(
      id: 3,
      name: r'bookNo',
      type: IsarType.string,
    ),
    r'fromNo': PropertySchema(
      id: 4,
      name: r'fromNo',
      type: IsarType.long,
    ),
    r'returned': PropertySchema(
      id: 5,
      name: r'returned',
      type: IsarType.string,
    ),
    r'stickerType': PropertySchema(
      id: 6,
      name: r'stickerType',
      type: IsarType.long,
    ),
    r'toNo': PropertySchema(
      id: 7,
      name: r'toNo',
      type: IsarType.long,
    )
  },
  estimateSize: _stickerEstimateSize,
  serialize: _stickerSerialize,
  deserialize: _stickerDeserialize,
  deserializeProp: _stickerDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _stickerGetId,
  getLinks: _stickerGetLinks,
  attach: _stickerAttach,
  version: '3.1.0+1',
);

int _stickerEstimateSize(
  Sticker object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bookNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.returned;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _stickerSerialize(
  Sticker object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.assignedBy);
  writer.writeDateTime(offsets[1], object.assignedDate);
  writer.writeLong(offsets[2], object.assignedTo);
  writer.writeString(offsets[3], object.bookNo);
  writer.writeLong(offsets[4], object.fromNo);
  writer.writeString(offsets[5], object.returned);
  writer.writeLong(offsets[6], object.stickerType);
  writer.writeLong(offsets[7], object.toNo);
}

Sticker _stickerDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Sticker(
    assignedBy: reader.readLongOrNull(offsets[0]),
    assignedDate: reader.readDateTimeOrNull(offsets[1]),
    assignedTo: reader.readLongOrNull(offsets[2]),
    bookNo: reader.readStringOrNull(offsets[3]),
    fromNo: reader.readLongOrNull(offsets[4]),
    returned: reader.readStringOrNull(offsets[5]),
    stickerType: reader.readLongOrNull(offsets[6]),
    toNo: reader.readLongOrNull(offsets[7]),
  );
  object.id = id;
  return object;
}

P _stickerDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _stickerGetId(Sticker object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _stickerGetLinks(Sticker object) {
  return [];
}

void _stickerAttach(IsarCollection<dynamic> col, Id id, Sticker object) {
  object.id = id;
}

extension StickerQueryWhereSort on QueryBuilder<Sticker, Sticker, QWhere> {
  QueryBuilder<Sticker, Sticker, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension StickerQueryWhere on QueryBuilder<Sticker, Sticker, QWhereClause> {
  QueryBuilder<Sticker, Sticker, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Sticker, Sticker, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterWhereClause> idBetween(
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

extension StickerQueryFilter
    on QueryBuilder<Sticker, Sticker, QFilterCondition> {
  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'assignedBy',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'assignedBy',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedByEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignedBy',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedByGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assignedBy',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedByLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assignedBy',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedByBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assignedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'assignedDate',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition>
      assignedDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'assignedDate',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assignedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assignedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assignedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedToIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'assignedTo',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedToIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'assignedTo',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedToEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignedTo',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedToGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assignedTo',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedToLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assignedTo',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> assignedToBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assignedTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bookNo',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bookNo',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bookNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bookNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bookNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bookNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bookNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bookNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bookNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> bookNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bookNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> fromNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fromNo',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> fromNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fromNo',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> fromNoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fromNo',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> fromNoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fromNo',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> fromNoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fromNo',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> fromNoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fromNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'returned',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'returned',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returned',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'returned',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'returned',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'returned',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'returned',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'returned',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'returned',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'returned',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'returned',
        value: '',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> returnedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'returned',
        value: '',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> stickerTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'stickerType',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> stickerTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'stickerType',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> stickerTypeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stickerType',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> stickerTypeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stickerType',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> stickerTypeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stickerType',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> stickerTypeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stickerType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> toNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'toNo',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> toNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'toNo',
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> toNoEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'toNo',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> toNoGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'toNo',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> toNoLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'toNo',
        value: value,
      ));
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterFilterCondition> toNoBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'toNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StickerQueryObject
    on QueryBuilder<Sticker, Sticker, QFilterCondition> {}

extension StickerQueryLinks
    on QueryBuilder<Sticker, Sticker, QFilterCondition> {}

extension StickerQuerySortBy on QueryBuilder<Sticker, Sticker, QSortBy> {
  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByAssignedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedBy', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByAssignedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedBy', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByAssignedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedDate', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByAssignedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedDate', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByAssignedTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedTo', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByAssignedToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedTo', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByBookNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookNo', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByBookNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookNo', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByFromNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromNo', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByFromNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromNo', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByReturned() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returned', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByReturnedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returned', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByStickerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stickerType', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByStickerTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stickerType', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByToNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toNo', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> sortByToNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toNo', Sort.desc);
    });
  }
}

extension StickerQuerySortThenBy
    on QueryBuilder<Sticker, Sticker, QSortThenBy> {
  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByAssignedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedBy', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByAssignedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedBy', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByAssignedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedDate', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByAssignedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedDate', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByAssignedTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedTo', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByAssignedToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'assignedTo', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByBookNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookNo', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByBookNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookNo', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByFromNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromNo', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByFromNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromNo', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByReturned() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returned', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByReturnedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'returned', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByStickerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stickerType', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByStickerTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stickerType', Sort.desc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByToNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toNo', Sort.asc);
    });
  }

  QueryBuilder<Sticker, Sticker, QAfterSortBy> thenByToNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toNo', Sort.desc);
    });
  }
}

extension StickerQueryWhereDistinct
    on QueryBuilder<Sticker, Sticker, QDistinct> {
  QueryBuilder<Sticker, Sticker, QDistinct> distinctByAssignedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assignedBy');
    });
  }

  QueryBuilder<Sticker, Sticker, QDistinct> distinctByAssignedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assignedDate');
    });
  }

  QueryBuilder<Sticker, Sticker, QDistinct> distinctByAssignedTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'assignedTo');
    });
  }

  QueryBuilder<Sticker, Sticker, QDistinct> distinctByBookNo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bookNo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Sticker, Sticker, QDistinct> distinctByFromNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fromNo');
    });
  }

  QueryBuilder<Sticker, Sticker, QDistinct> distinctByReturned(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'returned', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Sticker, Sticker, QDistinct> distinctByStickerType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stickerType');
    });
  }

  QueryBuilder<Sticker, Sticker, QDistinct> distinctByToNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'toNo');
    });
  }
}

extension StickerQueryProperty
    on QueryBuilder<Sticker, Sticker, QQueryProperty> {
  QueryBuilder<Sticker, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Sticker, int?, QQueryOperations> assignedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assignedBy');
    });
  }

  QueryBuilder<Sticker, DateTime?, QQueryOperations> assignedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assignedDate');
    });
  }

  QueryBuilder<Sticker, int?, QQueryOperations> assignedToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'assignedTo');
    });
  }

  QueryBuilder<Sticker, String?, QQueryOperations> bookNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bookNo');
    });
  }

  QueryBuilder<Sticker, int?, QQueryOperations> fromNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fromNo');
    });
  }

  QueryBuilder<Sticker, String?, QQueryOperations> returnedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'returned');
    });
  }

  QueryBuilder<Sticker, int?, QQueryOperations> stickerTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stickerType');
    });
  }

  QueryBuilder<Sticker, int?, QQueryOperations> toNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'toNo');
    });
  }
}
