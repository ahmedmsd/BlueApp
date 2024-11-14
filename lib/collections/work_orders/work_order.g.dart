// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWorkOrderCollection on Isar {
  IsarCollection<WorkOrder> get workOrders => this.collection();
}

const WorkOrderSchema = CollectionSchema(
  name: r'WorkOrder',
  id: -9184689674802889947,
  properties: {
    r'closeCode': PropertySchema(
      id: 0,
      name: r'closeCode',
      type: IsarType.long,
    ),
    r'collectedCode': PropertySchema(
      id: 1,
      name: r'collectedCode',
      type: IsarType.long,
    ),
    r'contactPLocation': PropertySchema(
      id: 2,
      name: r'contactPLocation',
      type: IsarType.string,
    ),
    r'coordinatorId': PropertySchema(
      id: 3,
      name: r'coordinatorId',
      type: IsarType.long,
    ),
    r'customerBadge': PropertySchema(
      id: 4,
      name: r'customerBadge',
      type: IsarType.string,
    ),
    r'customerId': PropertySchema(
      id: 5,
      name: r'customerId',
      type: IsarType.long,
    ),
    r'customerMobile': PropertySchema(
      id: 6,
      name: r'customerMobile',
      type: IsarType.string,
    ),
    r'customerName': PropertySchema(
      id: 7,
      name: r'customerName',
      type: IsarType.string,
    ),
    r'customerSign': PropertySchema(
      id: 8,
      name: r'customerSign',
      type: IsarType.string,
    ),
    r'dateAdded': PropertySchema(
      id: 9,
      name: r'dateAdded',
      type: IsarType.dateTime,
    ),
    r'isSynced': PropertySchema(
      id: 10,
      name: r'isSynced',
      type: IsarType.bool,
    ),
    r'isUploaded': PropertySchema(
      id: 11,
      name: r'isUploaded',
      type: IsarType.bool,
    ),
    r'locationDetails': PropertySchema(
      id: 12,
      name: r'locationDetails',
      type: IsarType.string,
    ),
    r'qrId': PropertySchema(
      id: 13,
      name: r'qrId',
      type: IsarType.long,
    ),
    r'sequence': PropertySchema(
      id: 14,
      name: r'sequence',
      type: IsarType.long,
    ),
    r'woDate': PropertySchema(
      id: 15,
      name: r'woDate',
      type: IsarType.dateTime,
    ),
    r'woId': PropertySchema(
      id: 16,
      name: r'woId',
      type: IsarType.long,
    ),
    r'workLocation': PropertySchema(
      id: 17,
      name: r'workLocation',
      type: IsarType.long,
    )
  },
  estimateSize: _workOrderEstimateSize,
  serialize: _workOrderSerialize,
  deserialize: _workOrderDeserialize,
  deserializeProp: _workOrderDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'certifications': LinkSchema(
      id: 2843916201315595002,
      name: r'certifications',
      target: r'Certification',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _workOrderGetId,
  getLinks: _workOrderGetLinks,
  attach: _workOrderAttach,
  version: '3.1.0+1',
);

int _workOrderEstimateSize(
  WorkOrder object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.contactPLocation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerBadge;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerMobile;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.customerSign;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.locationDetails;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _workOrderSerialize(
  WorkOrder object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.closeCode);
  writer.writeLong(offsets[1], object.collectedCode);
  writer.writeString(offsets[2], object.contactPLocation);
  writer.writeLong(offsets[3], object.coordinatorId);
  writer.writeString(offsets[4], object.customerBadge);
  writer.writeLong(offsets[5], object.customerId);
  writer.writeString(offsets[6], object.customerMobile);
  writer.writeString(offsets[7], object.customerName);
  writer.writeString(offsets[8], object.customerSign);
  writer.writeDateTime(offsets[9], object.dateAdded);
  writer.writeBool(offsets[10], object.isSynced);
  writer.writeBool(offsets[11], object.isUploaded);
  writer.writeString(offsets[12], object.locationDetails);
  writer.writeLong(offsets[13], object.qrId);
  writer.writeLong(offsets[14], object.sequence);
  writer.writeDateTime(offsets[15], object.woDate);
  writer.writeLong(offsets[16], object.woId);
  writer.writeLong(offsets[17], object.workLocation);
}

WorkOrder _workOrderDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WorkOrder(
    closeCode: reader.readLongOrNull(offsets[0]),
    collectedCode: reader.readLongOrNull(offsets[1]),
    contactPLocation: reader.readStringOrNull(offsets[2]),
    coordinatorId: reader.readLongOrNull(offsets[3]),
    customerBadge: reader.readStringOrNull(offsets[4]),
    customerId: reader.readLongOrNull(offsets[5]),
    customerMobile: reader.readStringOrNull(offsets[6]),
    customerName: reader.readStringOrNull(offsets[7]),
    customerSign: reader.readStringOrNull(offsets[8]),
    dateAdded: reader.readDateTimeOrNull(offsets[9]),
    isSynced: reader.readBoolOrNull(offsets[10]),
    isUploaded: reader.readBoolOrNull(offsets[11]),
    locationDetails: reader.readStringOrNull(offsets[12]),
    qrId: reader.readLongOrNull(offsets[13]),
    sequence: reader.readLongOrNull(offsets[14]),
    woDate: reader.readDateTimeOrNull(offsets[15]),
    woId: reader.readLong(offsets[16]),
    workLocation: reader.readLongOrNull(offsets[17]),
  );
  object.id = id;
  return object;
}

P _workOrderDeserializeProp<P>(
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
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readBoolOrNull(offset)) as P;
    case 11:
      return (reader.readBoolOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 16:
      return (reader.readLong(offset)) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _workOrderGetId(WorkOrder object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _workOrderGetLinks(WorkOrder object) {
  return [object.certifications];
}

void _workOrderAttach(IsarCollection<dynamic> col, Id id, WorkOrder object) {
  object.id = id;
  object.certifications
      .attach(col, col.isar.collection<Certification>(), r'certifications', id);
}

extension WorkOrderQueryWhereSort
    on QueryBuilder<WorkOrder, WorkOrder, QWhere> {
  QueryBuilder<WorkOrder, WorkOrder, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WorkOrderQueryWhere
    on QueryBuilder<WorkOrder, WorkOrder, QWhereClause> {
  QueryBuilder<WorkOrder, WorkOrder, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<WorkOrder, WorkOrder, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterWhereClause> idBetween(
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

extension WorkOrderQueryFilter
    on QueryBuilder<WorkOrder, WorkOrder, QFilterCondition> {
  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> closeCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'closeCode',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      closeCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'closeCode',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> closeCodeEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'closeCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      closeCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'closeCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> closeCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'closeCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> closeCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'closeCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      collectedCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'collectedCode',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      collectedCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'collectedCode',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      collectedCodeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'collectedCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      collectedCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'collectedCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      collectedCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'collectedCode',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      collectedCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'collectedCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'contactPLocation',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'contactPLocation',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactPLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'contactPLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'contactPLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'contactPLocation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'contactPLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'contactPLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'contactPLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'contactPLocation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'contactPLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      contactPLocationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'contactPLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      coordinatorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'coordinatorId',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      coordinatorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'coordinatorId',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      coordinatorIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'coordinatorId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      coordinatorIdGreaterThan(
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

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      coordinatorIdLessThan(
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

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      coordinatorIdBetween(
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

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerBadge',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerBadge',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerBadge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerBadge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerBadge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerBadge',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerBadge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerBadge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerBadge',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerBadge',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerBadge',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerBadgeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerBadge',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> customerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> customerIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> customerIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> customerIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerMobile',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerMobile',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerMobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerMobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerMobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerMobile',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerMobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerMobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerMobile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerMobile',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerMobile',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerMobileIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerMobile',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerName',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> customerNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> customerNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> customerNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerName',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerSignIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerSign',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerSignIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerSign',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> customerSignEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerSign',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerSignGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerSign',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerSignLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerSign',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> customerSignBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerSign',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerSignStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerSign',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerSignEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerSign',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerSignContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerSign',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> customerSignMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerSign',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerSignIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerSign',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      customerSignIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerSign',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> dateAddedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateAdded',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      dateAddedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateAdded',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> dateAddedEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateAdded',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      dateAddedGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateAdded',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> dateAddedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateAdded',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> dateAddedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateAdded',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> idBetween(
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

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> isSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isSynced',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      isSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isSynced',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> isSyncedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> isUploadedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isUploaded',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      isUploadedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isUploaded',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> isUploadedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isUploaded',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'locationDetails',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'locationDetails',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationDetails',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'locationDetails',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'locationDetails',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'locationDetails',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'locationDetails',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'locationDetails',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'locationDetails',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'locationDetails',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'locationDetails',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      locationDetailsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'locationDetails',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> qrIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qrId',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> qrIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qrId',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> qrIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qrId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> qrIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qrId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> qrIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qrId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> qrIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qrId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> sequenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sequence',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      sequenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sequence',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> sequenceEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sequence',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> sequenceGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sequence',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> sequenceLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sequence',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> sequenceBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sequence',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> woDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'woDate',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> woDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'woDate',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> woDateEqualTo(
      DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'woDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> woDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'woDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> woDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'woDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> woDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'woDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> woIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'woId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> woIdGreaterThan(
    int value, {
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

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> woIdLessThan(
    int value, {
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

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> woIdBetween(
    int lower,
    int upper, {
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

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      workLocationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'workLocation',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      workLocationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'workLocation',
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> workLocationEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'workLocation',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      workLocationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'workLocation',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      workLocationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'workLocation',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> workLocationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'workLocation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WorkOrderQueryObject
    on QueryBuilder<WorkOrder, WorkOrder, QFilterCondition> {}

extension WorkOrderQueryLinks
    on QueryBuilder<WorkOrder, WorkOrder, QFilterCondition> {
  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition> certifications(
      FilterQuery<Certification> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'certifications');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      certificationsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'certifications', length, true, length, true);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      certificationsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'certifications', 0, true, 0, true);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      certificationsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'certifications', 0, false, 999999, true);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      certificationsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'certifications', 0, true, length, include);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      certificationsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'certifications', length, include, 999999, true);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterFilterCondition>
      certificationsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'certifications', lower, includeLower, upper, includeUpper);
    });
  }
}

extension WorkOrderQuerySortBy on QueryBuilder<WorkOrder, WorkOrder, QSortBy> {
  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCloseCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closeCode', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCloseCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closeCode', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCollectedCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectedCode', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCollectedCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectedCode', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByContactPLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPLocation', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy>
      sortByContactPLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPLocation', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCoordinatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coordinatorId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCoordinatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coordinatorId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCustomerBadge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerBadge', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCustomerBadgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerBadge', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCustomerMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCustomerMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCustomerSign() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSign', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByCustomerSignDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSign', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByDateAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByDateAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByIsUploaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUploaded', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByIsUploadedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUploaded', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByLocationDetails() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationDetails', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByLocationDetailsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationDetails', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByQrId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByQrIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortBySequence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sequence', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortBySequenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sequence', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByWoDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woDate', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByWoDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woDate', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByWoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByWorkLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workLocation', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> sortByWorkLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workLocation', Sort.desc);
    });
  }
}

extension WorkOrderQuerySortThenBy
    on QueryBuilder<WorkOrder, WorkOrder, QSortThenBy> {
  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCloseCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closeCode', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCloseCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'closeCode', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCollectedCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectedCode', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCollectedCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'collectedCode', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByContactPLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPLocation', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy>
      thenByContactPLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'contactPLocation', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCoordinatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coordinatorId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCoordinatorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'coordinatorId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCustomerBadge() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerBadge', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCustomerBadgeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerBadge', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCustomerMobile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCustomerMobileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerMobile', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCustomerName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCustomerNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerName', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCustomerSign() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSign', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByCustomerSignDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerSign', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByDateAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByDateAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByIsUploaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUploaded', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByIsUploadedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isUploaded', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByLocationDetails() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationDetails', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByLocationDetailsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'locationDetails', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByQrId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByQrIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenBySequence() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sequence', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenBySequenceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sequence', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByWoDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woDate', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByWoDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woDate', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByWoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByWorkLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workLocation', Sort.asc);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QAfterSortBy> thenByWorkLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'workLocation', Sort.desc);
    });
  }
}

extension WorkOrderQueryWhereDistinct
    on QueryBuilder<WorkOrder, WorkOrder, QDistinct> {
  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByCloseCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'closeCode');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByCollectedCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'collectedCode');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByContactPLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'contactPLocation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByCoordinatorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'coordinatorId');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByCustomerBadge(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerBadge',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByCustomerMobile(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerMobile',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByCustomerName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByCustomerSign(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerSign', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByDateAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateAdded');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByIsUploaded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isUploaded');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByLocationDetails(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'locationDetails',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByQrId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qrId');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctBySequence() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sequence');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByWoDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'woDate');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'woId');
    });
  }

  QueryBuilder<WorkOrder, WorkOrder, QDistinct> distinctByWorkLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'workLocation');
    });
  }
}

extension WorkOrderQueryProperty
    on QueryBuilder<WorkOrder, WorkOrder, QQueryProperty> {
  QueryBuilder<WorkOrder, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WorkOrder, int?, QQueryOperations> closeCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'closeCode');
    });
  }

  QueryBuilder<WorkOrder, int?, QQueryOperations> collectedCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'collectedCode');
    });
  }

  QueryBuilder<WorkOrder, String?, QQueryOperations>
      contactPLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'contactPLocation');
    });
  }

  QueryBuilder<WorkOrder, int?, QQueryOperations> coordinatorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'coordinatorId');
    });
  }

  QueryBuilder<WorkOrder, String?, QQueryOperations> customerBadgeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerBadge');
    });
  }

  QueryBuilder<WorkOrder, int?, QQueryOperations> customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<WorkOrder, String?, QQueryOperations> customerMobileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerMobile');
    });
  }

  QueryBuilder<WorkOrder, String?, QQueryOperations> customerNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerName');
    });
  }

  QueryBuilder<WorkOrder, String?, QQueryOperations> customerSignProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerSign');
    });
  }

  QueryBuilder<WorkOrder, DateTime?, QQueryOperations> dateAddedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateAdded');
    });
  }

  QueryBuilder<WorkOrder, bool?, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<WorkOrder, bool?, QQueryOperations> isUploadedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isUploaded');
    });
  }

  QueryBuilder<WorkOrder, String?, QQueryOperations> locationDetailsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'locationDetails');
    });
  }

  QueryBuilder<WorkOrder, int?, QQueryOperations> qrIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qrId');
    });
  }

  QueryBuilder<WorkOrder, int?, QQueryOperations> sequenceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sequence');
    });
  }

  QueryBuilder<WorkOrder, DateTime?, QQueryOperations> woDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'woDate');
    });
  }

  QueryBuilder<WorkOrder, int, QQueryOperations> woIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'woId');
    });
  }

  QueryBuilder<WorkOrder, int?, QQueryOperations> workLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'workLocation');
    });
  }
}
