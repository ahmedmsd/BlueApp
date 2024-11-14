// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_order_assigned.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWorkOrderAssignedCollection on Isar {
  IsarCollection<WorkOrderAssigned> get workOrderAssigneds => this.collection();
}

const WorkOrderAssignedSchema = CollectionSchema(
  name: r'WorkOrderAssigned',
  id: 6564496597588830154,
  properties: {
    r'carId': PropertySchema(
      id: 0,
      name: r'carId',
      type: IsarType.long,
    ),
    r'fromDate': PropertySchema(
      id: 1,
      name: r'fromDate',
      type: IsarType.dateTime,
    ),
    r'iD': PropertySchema(
      id: 2,
      name: r'iD',
      type: IsarType.long,
    ),
    r'inspectionType': PropertySchema(
      id: 3,
      name: r'inspectionType',
      type: IsarType.long,
    ),
    r'notes': PropertySchema(
      id: 4,
      name: r'notes',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 5,
      name: r'quantity',
      type: IsarType.long,
    ),
    r'serviceId': PropertySchema(
      id: 6,
      name: r'serviceId',
      type: IsarType.long,
    ),
    r'serviceType': PropertySchema(
      id: 7,
      name: r'serviceType',
      type: IsarType.long,
    ),
    r'timesheetFile': PropertySchema(
      id: 8,
      name: r'timesheetFile',
      type: IsarType.string,
    ),
    r'toDate': PropertySchema(
      id: 9,
      name: r'toDate',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 10,
      name: r'userId',
      type: IsarType.long,
    ),
    r'woId': PropertySchema(
      id: 11,
      name: r'woId',
      type: IsarType.long,
    )
  },
  estimateSize: _workOrderAssignedEstimateSize,
  serialize: _workOrderAssignedSerialize,
  deserialize: _workOrderAssignedDeserialize,
  deserializeProp: _workOrderAssignedDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _workOrderAssignedGetId,
  getLinks: _workOrderAssignedGetLinks,
  attach: _workOrderAssignedAttach,
  version: '3.1.0+1',
);

int _workOrderAssignedEstimateSize(
  WorkOrderAssigned object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.notes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timesheetFile;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _workOrderAssignedSerialize(
  WorkOrderAssigned object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.carId);
  writer.writeDateTime(offsets[1], object.fromDate);
  writer.writeLong(offsets[2], object.iD);
  writer.writeLong(offsets[3], object.inspectionType);
  writer.writeString(offsets[4], object.notes);
  writer.writeLong(offsets[5], object.quantity);
  writer.writeLong(offsets[6], object.serviceId);
  writer.writeLong(offsets[7], object.serviceType);
  writer.writeString(offsets[8], object.timesheetFile);
  writer.writeDateTime(offsets[9], object.toDate);
  writer.writeLong(offsets[10], object.userId);
  writer.writeLong(offsets[11], object.woId);
}

WorkOrderAssigned _workOrderAssignedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = WorkOrderAssigned(
    carId: reader.readLongOrNull(offsets[0]),
    fromDate: reader.readDateTimeOrNull(offsets[1]),
    iD: reader.readLongOrNull(offsets[2]),
    inspectionType: reader.readLongOrNull(offsets[3]),
    notes: reader.readStringOrNull(offsets[4]),
    quantity: reader.readLongOrNull(offsets[5]),
    serviceId: reader.readLongOrNull(offsets[6]),
    serviceType: reader.readLongOrNull(offsets[7]),
    timesheetFile: reader.readStringOrNull(offsets[8]),
    toDate: reader.readDateTimeOrNull(offsets[9]),
    userId: reader.readLongOrNull(offsets[10]),
    woId: reader.readLongOrNull(offsets[11]),
  );
  object.id = id;
  return object;
}

P _workOrderAssignedDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _workOrderAssignedGetId(WorkOrderAssigned object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _workOrderAssignedGetLinks(
    WorkOrderAssigned object) {
  return [];
}

void _workOrderAssignedAttach(
    IsarCollection<dynamic> col, Id id, WorkOrderAssigned object) {
  object.id = id;
}

extension WorkOrderAssignedQueryWhereSort
    on QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QWhere> {
  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WorkOrderAssignedQueryWhere
    on QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QWhereClause> {
  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterWhereClause>
      idBetween(
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

extension WorkOrderAssignedQueryFilter
    on QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QFilterCondition> {
  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      carIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'carId',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      carIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'carId',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      carIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'carId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      carIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'carId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      carIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'carId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      carIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'carId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      fromDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fromDate',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      fromDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fromDate',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      fromDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fromDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      fromDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fromDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      fromDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fromDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      fromDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fromDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      iDIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'iD',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      iDIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'iD',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      iDEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'iD',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      iDGreaterThan(
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      iDLessThan(
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      iDBetween(
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      inspectionTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'inspectionType',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      inspectionTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'inspectionType',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      inspectionTypeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inspectionType',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      inspectionTypeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inspectionType',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      inspectionTypeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inspectionType',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      inspectionTypeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inspectionType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'notes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      quantityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      quantityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      quantityEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      quantityGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      quantityLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      quantityBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serviceId',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serviceId',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'serviceType',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'serviceType',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceTypeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'serviceType',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceTypeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'serviceType',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceTypeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'serviceType',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      serviceTypeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'serviceType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timesheetFile',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timesheetFile',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timesheetFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timesheetFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timesheetFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timesheetFile',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timesheetFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timesheetFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timesheetFile',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timesheetFile',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timesheetFile',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      timesheetFileIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timesheetFile',
        value: '',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      toDateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'toDate',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      toDateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'toDate',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      toDateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'toDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      toDateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'toDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      toDateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'toDate',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      toDateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'toDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      userIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      userIdLessThan(
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      userIdBetween(
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      woIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'woId',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      woIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'woId',
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      woIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'woId',
        value: value,
      ));
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      woIdGreaterThan(
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      woIdLessThan(
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

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterFilterCondition>
      woIdBetween(
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

extension WorkOrderAssignedQueryObject
    on QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QFilterCondition> {}

extension WorkOrderAssignedQueryLinks
    on QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QFilterCondition> {}

extension WorkOrderAssignedQuerySortBy
    on QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QSortBy> {
  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByCarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByCarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromDate', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByFromDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromDate', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy> sortByID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iD', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iD', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByInspectionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionType', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByInspectionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionType', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByServiceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByServiceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByServiceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceType', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByServiceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceType', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByTimesheetFile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timesheetFile', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByTimesheetFileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timesheetFile', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toDate', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByToDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toDate', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      sortByWoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.desc);
    });
  }
}

extension WorkOrderAssignedQuerySortThenBy
    on QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QSortThenBy> {
  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByCarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByCarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'carId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromDate', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByFromDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fromDate', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy> thenByID() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iD', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByIDDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'iD', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByInspectionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionType', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByInspectionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionType', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByServiceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByServiceIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByServiceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceType', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByServiceTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'serviceType', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByTimesheetFile() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timesheetFile', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByTimesheetFileDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timesheetFile', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toDate', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByToDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'toDate', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.asc);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QAfterSortBy>
      thenByWoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.desc);
    });
  }
}

extension WorkOrderAssignedQueryWhereDistinct
    on QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct> {
  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct>
      distinctByCarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'carId');
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct>
      distinctByFromDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fromDate');
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct> distinctByID() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'iD');
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct>
      distinctByInspectionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inspectionType');
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct>
      distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct>
      distinctByServiceId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceId');
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct>
      distinctByServiceType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'serviceType');
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct>
      distinctByTimesheetFile({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timesheetFile',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct>
      distinctByToDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'toDate');
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct>
      distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }

  QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QDistinct>
      distinctByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'woId');
    });
  }
}

extension WorkOrderAssignedQueryProperty
    on QueryBuilder<WorkOrderAssigned, WorkOrderAssigned, QQueryProperty> {
  QueryBuilder<WorkOrderAssigned, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<WorkOrderAssigned, int?, QQueryOperations> carIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'carId');
    });
  }

  QueryBuilder<WorkOrderAssigned, DateTime?, QQueryOperations>
      fromDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fromDate');
    });
  }

  QueryBuilder<WorkOrderAssigned, int?, QQueryOperations> iDProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'iD');
    });
  }

  QueryBuilder<WorkOrderAssigned, int?, QQueryOperations>
      inspectionTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inspectionType');
    });
  }

  QueryBuilder<WorkOrderAssigned, String?, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<WorkOrderAssigned, int?, QQueryOperations> quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<WorkOrderAssigned, int?, QQueryOperations> serviceIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceId');
    });
  }

  QueryBuilder<WorkOrderAssigned, int?, QQueryOperations>
      serviceTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'serviceType');
    });
  }

  QueryBuilder<WorkOrderAssigned, String?, QQueryOperations>
      timesheetFileProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timesheetFile');
    });
  }

  QueryBuilder<WorkOrderAssigned, DateTime?, QQueryOperations>
      toDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'toDate');
    });
  }

  QueryBuilder<WorkOrderAssigned, int?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }

  QueryBuilder<WorkOrderAssigned, int?, QQueryOperations> woIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'woId');
    });
  }
}
