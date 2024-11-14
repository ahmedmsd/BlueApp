// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certification.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCertificationCollection on Isar {
  IsarCollection<Certification> get certifications => this.collection();
}

const CertificationSchema = CollectionSchema(
  name: r'Certification',
  id: -559864448965793403,
  properties: {
    r'actualDeflectionOne': PropertySchema(
      id: 0,
      name: r'actualDeflectionOne',
      type: IsarType.string,
    ),
    r'actualDeflectionThree': PropertySchema(
      id: 1,
      name: r'actualDeflectionThree',
      type: IsarType.string,
    ),
    r'actualDeflectionTwo': PropertySchema(
      id: 2,
      name: r'actualDeflectionTwo',
      type: IsarType.string,
    ),
    r'aramcoReportNo': PropertySchema(
      id: 3,
      name: r'aramcoReportNo',
      type: IsarType.string,
    ),
    r'certificationName': PropertySchema(
      id: 4,
      name: r'certificationName',
      type: IsarType.string,
    ),
    r'certificationNumber': PropertySchema(
      id: 5,
      name: r'certificationNumber',
      type: IsarType.long,
    ),
    r'checklistId': PropertySchema(
      id: 6,
      name: r'checklistId',
      type: IsarType.long,
    ),
    r'cityId': PropertySchema(
      id: 7,
      name: r'cityId',
      type: IsarType.long,
    ),
    r'correctiveAction': PropertySchema(
      id: 8,
      name: r'correctiveAction',
      type: IsarType.string,
    ),
    r'eqCapacity': PropertySchema(
      id: 9,
      name: r'eqCapacity',
      type: IsarType.string,
    ),
    r'eqId': PropertySchema(
      id: 10,
      name: r'eqId',
      type: IsarType.string,
    ),
    r'eqLocation': PropertySchema(
      id: 11,
      name: r'eqLocation',
      type: IsarType.string,
    ),
    r'eqManf': PropertySchema(
      id: 12,
      name: r'eqManf',
      type: IsarType.string,
    ),
    r'eqModel': PropertySchema(
      id: 13,
      name: r'eqModel',
      type: IsarType.string,
    ),
    r'eqSerial': PropertySchema(
      id: 14,
      name: r'eqSerial',
      type: IsarType.string,
    ),
    r'eqType': PropertySchema(
      id: 15,
      name: r'eqType',
      type: IsarType.long,
    ),
    r'equipmentName': PropertySchema(
      id: 16,
      name: r'equipmentName',
      type: IsarType.string,
    ),
    r'inspectionDate': PropertySchema(
      id: 17,
      name: r'inspectionDate',
      type: IsarType.string,
    ),
    r'inspectorId': PropertySchema(
      id: 18,
      name: r'inspectorId',
      type: IsarType.long,
    ),
    r'isLoadTestAdded': PropertySchema(
      id: 19,
      name: r'isLoadTestAdded',
      type: IsarType.bool,
    ),
    r'isSynced': PropertySchema(
      id: 20,
      name: r'isSynced',
      type: IsarType.bool,
    ),
    r'loadCellUsedToDetermineExactTestLoadWeight': PropertySchema(
      id: 21,
      name: r'loadCellUsedToDetermineExactTestLoadWeight',
      type: IsarType.string,
    ),
    r'maxAllowedDeflectionOne': PropertySchema(
      id: 22,
      name: r'maxAllowedDeflectionOne',
      type: IsarType.string,
    ),
    r'maxAllowedDeflectionThree': PropertySchema(
      id: 23,
      name: r'maxAllowedDeflectionThree',
      type: IsarType.string,
    ),
    r'maxAllowedDeflectionTwo': PropertySchema(
      id: 24,
      name: r'maxAllowedDeflectionTwo',
      type: IsarType.string,
    ),
    r'newSticker': PropertySchema(
      id: 25,
      name: r'newSticker',
      type: IsarType.long,
    ),
    r'notes': PropertySchema(
      id: 26,
      name: r'notes',
      type: IsarType.string,
    ),
    r'orgCode': PropertySchema(
      id: 27,
      name: r'orgCode',
      type: IsarType.string,
    ),
    r'prevIssuedBy': PropertySchema(
      id: 28,
      name: r'prevIssuedBy',
      type: IsarType.string,
    ),
    r'prevSticker': PropertySchema(
      id: 29,
      name: r'prevSticker',
      type: IsarType.string,
    ),
    r'procedureReferenceNo': PropertySchema(
      id: 30,
      name: r'procedureReferenceNo',
      type: IsarType.string,
    ),
    r'refStandardForLoadTest': PropertySchema(
      id: 31,
      name: r'refStandardForLoadTest',
      type: IsarType.string,
    ),
    r'resultOne': PropertySchema(
      id: 32,
      name: r'resultOne',
      type: IsarType.string,
    ),
    r'resultThree': PropertySchema(
      id: 33,
      name: r'resultThree',
      type: IsarType.string,
    ),
    r'resultTwo': PropertySchema(
      id: 34,
      name: r'resultTwo',
      type: IsarType.string,
    ),
    r'spanOne': PropertySchema(
      id: 35,
      name: r'spanOne',
      type: IsarType.string,
    ),
    r'spanThree': PropertySchema(
      id: 36,
      name: r'spanThree',
      type: IsarType.string,
    ),
    r'spanTwo': PropertySchema(
      id: 37,
      name: r'spanTwo',
      type: IsarType.string,
    ),
    r'stickerExpireDate': PropertySchema(
      id: 38,
      name: r'stickerExpireDate',
      type: IsarType.string,
    ),
    r'testPerformedBy': PropertySchema(
      id: 39,
      name: r'testPerformedBy',
      type: IsarType.string,
    ),
    r'testResult': PropertySchema(
      id: 40,
      name: r'testResult',
      type: IsarType.string,
    ),
    r'testType': PropertySchema(
      id: 41,
      name: r'testType',
      type: IsarType.long,
    ),
    r'weightCalculationVerified': PropertySchema(
      id: 42,
      name: r'weightCalculationVerified',
      type: IsarType.string,
    ),
    r'weightOfLoadAppliedOne': PropertySchema(
      id: 43,
      name: r'weightOfLoadAppliedOne',
      type: IsarType.string,
    ),
    r'weightOfLoadAppliedThree': PropertySchema(
      id: 44,
      name: r'weightOfLoadAppliedThree',
      type: IsarType.string,
    ),
    r'weightOfLoadAppliedTwo': PropertySchema(
      id: 45,
      name: r'weightOfLoadAppliedTwo',
      type: IsarType.string,
    ),
    r'woId': PropertySchema(
      id: 46,
      name: r'woId',
      type: IsarType.long,
    )
  },
  estimateSize: _certificationEstimateSize,
  serialize: _certificationSerialize,
  deserialize: _certificationDeserialize,
  deserializeProp: _certificationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'workOrder': LinkSchema(
      id: 2355733678972151417,
      name: r'workOrder',
      target: r'WorkOrder',
      single: true,
      linkName: r'certifications',
    ),
    r'checkListItems': LinkSchema(
      id: -8730401067264550834,
      name: r'checkListItems',
      target: r'CheckListItem',
      single: false,
    ),
    r'attachedPhotos': LinkSchema(
      id: 5072984951240490913,
      name: r'attachedPhotos',
      target: r'AttachedPhoto',
      single: false,
    ),
    r'loadTestCheckListItems': LinkSchema(
      id: -6169593481094014152,
      name: r'loadTestCheckListItems',
      target: r'LoadTestCheckListItem',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _certificationGetId,
  getLinks: _certificationGetLinks,
  attach: _certificationAttach,
  version: '3.1.0+1',
);

int _certificationEstimateSize(
  Certification object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.actualDeflectionOne;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.actualDeflectionThree;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.actualDeflectionTwo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.aramcoReportNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.certificationName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.correctiveAction;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.eqCapacity.length * 3;
  bytesCount += 3 + object.eqId.length * 3;
  bytesCount += 3 + object.eqLocation.length * 3;
  bytesCount += 3 + object.eqManf.length * 3;
  bytesCount += 3 + object.eqModel.length * 3;
  bytesCount += 3 + object.eqSerial.length * 3;
  bytesCount += 3 + object.equipmentName.length * 3;
  bytesCount += 3 + object.inspectionDate.length * 3;
  {
    final value = object.loadCellUsedToDetermineExactTestLoadWeight;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.maxAllowedDeflectionOne;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.maxAllowedDeflectionThree;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.maxAllowedDeflectionTwo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.notes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.orgCode.length * 3;
  bytesCount += 3 + object.prevIssuedBy.length * 3;
  bytesCount += 3 + object.prevSticker.length * 3;
  {
    final value = object.procedureReferenceNo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.refStandardForLoadTest;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.resultOne;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.resultThree;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.resultTwo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.spanOne;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.spanThree;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.spanTwo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.stickerExpireDate.length * 3;
  {
    final value = object.testPerformedBy;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.testResult.length * 3;
  {
    final value = object.weightCalculationVerified;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.weightOfLoadAppliedOne;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.weightOfLoadAppliedThree;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.weightOfLoadAppliedTwo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _certificationSerialize(
  Certification object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.actualDeflectionOne);
  writer.writeString(offsets[1], object.actualDeflectionThree);
  writer.writeString(offsets[2], object.actualDeflectionTwo);
  writer.writeString(offsets[3], object.aramcoReportNo);
  writer.writeString(offsets[4], object.certificationName);
  writer.writeLong(offsets[5], object.certificationNumber);
  writer.writeLong(offsets[6], object.checklistId);
  writer.writeLong(offsets[7], object.cityId);
  writer.writeString(offsets[8], object.correctiveAction);
  writer.writeString(offsets[9], object.eqCapacity);
  writer.writeString(offsets[10], object.eqId);
  writer.writeString(offsets[11], object.eqLocation);
  writer.writeString(offsets[12], object.eqManf);
  writer.writeString(offsets[13], object.eqModel);
  writer.writeString(offsets[14], object.eqSerial);
  writer.writeLong(offsets[15], object.eqType);
  writer.writeString(offsets[16], object.equipmentName);
  writer.writeString(offsets[17], object.inspectionDate);
  writer.writeLong(offsets[18], object.inspectorId);
  writer.writeBool(offsets[19], object.isLoadTestAdded);
  writer.writeBool(offsets[20], object.isSynced);
  writer.writeString(
      offsets[21], object.loadCellUsedToDetermineExactTestLoadWeight);
  writer.writeString(offsets[22], object.maxAllowedDeflectionOne);
  writer.writeString(offsets[23], object.maxAllowedDeflectionThree);
  writer.writeString(offsets[24], object.maxAllowedDeflectionTwo);
  writer.writeLong(offsets[25], object.newSticker);
  writer.writeString(offsets[26], object.notes);
  writer.writeString(offsets[27], object.orgCode);
  writer.writeString(offsets[28], object.prevIssuedBy);
  writer.writeString(offsets[29], object.prevSticker);
  writer.writeString(offsets[30], object.procedureReferenceNo);
  writer.writeString(offsets[31], object.refStandardForLoadTest);
  writer.writeString(offsets[32], object.resultOne);
  writer.writeString(offsets[33], object.resultThree);
  writer.writeString(offsets[34], object.resultTwo);
  writer.writeString(offsets[35], object.spanOne);
  writer.writeString(offsets[36], object.spanThree);
  writer.writeString(offsets[37], object.spanTwo);
  writer.writeString(offsets[38], object.stickerExpireDate);
  writer.writeString(offsets[39], object.testPerformedBy);
  writer.writeString(offsets[40], object.testResult);
  writer.writeLong(offsets[41], object.testType);
  writer.writeString(offsets[42], object.weightCalculationVerified);
  writer.writeString(offsets[43], object.weightOfLoadAppliedOne);
  writer.writeString(offsets[44], object.weightOfLoadAppliedThree);
  writer.writeString(offsets[45], object.weightOfLoadAppliedTwo);
  writer.writeLong(offsets[46], object.woId);
}

Certification _certificationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Certification(
    actualDeflectionOne: reader.readStringOrNull(offsets[0]),
    actualDeflectionThree: reader.readStringOrNull(offsets[1]),
    actualDeflectionTwo: reader.readStringOrNull(offsets[2]),
    aramcoReportNo: reader.readStringOrNull(offsets[3]),
    certificationName: reader.readStringOrNull(offsets[4]),
    certificationNumber: reader.readLongOrNull(offsets[5]),
    checklistId: reader.readLong(offsets[6]),
    cityId: reader.readLong(offsets[7]),
    correctiveAction: reader.readStringOrNull(offsets[8]),
    eqCapacity: reader.readString(offsets[9]),
    eqId: reader.readString(offsets[10]),
    eqLocation: reader.readString(offsets[11]),
    eqManf: reader.readString(offsets[12]),
    eqModel: reader.readString(offsets[13]),
    eqSerial: reader.readString(offsets[14]),
    eqType: reader.readLong(offsets[15]),
    equipmentName: reader.readString(offsets[16]),
    inspectionDate: reader.readString(offsets[17]),
    inspectorId: reader.readLong(offsets[18]),
    isLoadTestAdded: reader.readBoolOrNull(offsets[19]),
    isSynced: reader.readBoolOrNull(offsets[20]),
    loadCellUsedToDetermineExactTestLoadWeight:
        reader.readStringOrNull(offsets[21]),
    maxAllowedDeflectionOne: reader.readStringOrNull(offsets[22]),
    maxAllowedDeflectionThree: reader.readStringOrNull(offsets[23]),
    maxAllowedDeflectionTwo: reader.readStringOrNull(offsets[24]),
    newSticker: reader.readLong(offsets[25]),
    notes: reader.readStringOrNull(offsets[26]),
    orgCode: reader.readString(offsets[27]),
    prevIssuedBy: reader.readString(offsets[28]),
    prevSticker: reader.readString(offsets[29]),
    procedureReferenceNo: reader.readStringOrNull(offsets[30]),
    refStandardForLoadTest: reader.readStringOrNull(offsets[31]),
    resultOne: reader.readStringOrNull(offsets[32]),
    resultThree: reader.readStringOrNull(offsets[33]),
    resultTwo: reader.readStringOrNull(offsets[34]),
    spanOne: reader.readStringOrNull(offsets[35]),
    spanThree: reader.readStringOrNull(offsets[36]),
    spanTwo: reader.readStringOrNull(offsets[37]),
    stickerExpireDate: reader.readString(offsets[38]),
    testPerformedBy: reader.readStringOrNull(offsets[39]),
    testResult: reader.readString(offsets[40]),
    testType: reader.readLong(offsets[41]),
    weightOfLoadAppliedOne: reader.readStringOrNull(offsets[43]),
    weightOfLoadAppliedThree: reader.readStringOrNull(offsets[44]),
    weightOfLoadAppliedTwo: reader.readStringOrNull(offsets[45]),
    woId: reader.readLong(offsets[46]),
  );
  object.id = id;
  object.weightCalculationVerified = reader.readStringOrNull(offsets[42]);
  return object;
}

P _certificationDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    case 15:
      return (reader.readLong(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    case 18:
      return (reader.readLong(offset)) as P;
    case 19:
      return (reader.readBoolOrNull(offset)) as P;
    case 20:
      return (reader.readBoolOrNull(offset)) as P;
    case 21:
      return (reader.readStringOrNull(offset)) as P;
    case 22:
      return (reader.readStringOrNull(offset)) as P;
    case 23:
      return (reader.readStringOrNull(offset)) as P;
    case 24:
      return (reader.readStringOrNull(offset)) as P;
    case 25:
      return (reader.readLong(offset)) as P;
    case 26:
      return (reader.readStringOrNull(offset)) as P;
    case 27:
      return (reader.readString(offset)) as P;
    case 28:
      return (reader.readString(offset)) as P;
    case 29:
      return (reader.readString(offset)) as P;
    case 30:
      return (reader.readStringOrNull(offset)) as P;
    case 31:
      return (reader.readStringOrNull(offset)) as P;
    case 32:
      return (reader.readStringOrNull(offset)) as P;
    case 33:
      return (reader.readStringOrNull(offset)) as P;
    case 34:
      return (reader.readStringOrNull(offset)) as P;
    case 35:
      return (reader.readStringOrNull(offset)) as P;
    case 36:
      return (reader.readStringOrNull(offset)) as P;
    case 37:
      return (reader.readStringOrNull(offset)) as P;
    case 38:
      return (reader.readString(offset)) as P;
    case 39:
      return (reader.readStringOrNull(offset)) as P;
    case 40:
      return (reader.readString(offset)) as P;
    case 41:
      return (reader.readLong(offset)) as P;
    case 42:
      return (reader.readStringOrNull(offset)) as P;
    case 43:
      return (reader.readStringOrNull(offset)) as P;
    case 44:
      return (reader.readStringOrNull(offset)) as P;
    case 45:
      return (reader.readStringOrNull(offset)) as P;
    case 46:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _certificationGetId(Certification object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _certificationGetLinks(Certification object) {
  return [
    object.workOrder,
    object.checkListItems,
    object.attachedPhotos,
    object.loadTestCheckListItems
  ];
}

void _certificationAttach(
    IsarCollection<dynamic> col, Id id, Certification object) {
  object.id = id;
  object.workOrder
      .attach(col, col.isar.collection<WorkOrder>(), r'workOrder', id);
  object.checkListItems
      .attach(col, col.isar.collection<CheckListItem>(), r'checkListItems', id);
  object.attachedPhotos
      .attach(col, col.isar.collection<AttachedPhoto>(), r'attachedPhotos', id);
  object.loadTestCheckListItems.attach(
      col,
      col.isar.collection<LoadTestCheckListItem>(),
      r'loadTestCheckListItems',
      id);
}

extension CertificationQueryWhereSort
    on QueryBuilder<Certification, Certification, QWhere> {
  QueryBuilder<Certification, Certification, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CertificationQueryWhere
    on QueryBuilder<Certification, Certification, QWhereClause> {
  QueryBuilder<Certification, Certification, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<Certification, Certification, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Certification, Certification, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Certification, Certification, QAfterWhereClause> idBetween(
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

extension CertificationQueryFilter
    on QueryBuilder<Certification, Certification, QFilterCondition> {
  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actualDeflectionOne',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actualDeflectionOne',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actualDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actualDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actualDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actualDeflectionOne',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'actualDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'actualDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'actualDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'actualDeflectionOne',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actualDeflectionOne',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionOneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'actualDeflectionOne',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actualDeflectionThree',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actualDeflectionThree',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actualDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actualDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actualDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actualDeflectionThree',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'actualDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'actualDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'actualDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'actualDeflectionThree',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actualDeflectionThree',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionThreeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'actualDeflectionThree',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'actualDeflectionTwo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'actualDeflectionTwo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actualDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'actualDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'actualDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'actualDeflectionTwo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'actualDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'actualDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'actualDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'actualDeflectionTwo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'actualDeflectionTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      actualDeflectionTwoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'actualDeflectionTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aramcoReportNo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aramcoReportNo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aramcoReportNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'aramcoReportNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'aramcoReportNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'aramcoReportNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'aramcoReportNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'aramcoReportNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'aramcoReportNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'aramcoReportNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aramcoReportNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      aramcoReportNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'aramcoReportNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'certificationName',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'certificationName',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'certificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'certificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'certificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'certificationName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'certificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'certificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'certificationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'certificationName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'certificationName',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'certificationName',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'certificationNumber',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'certificationNumber',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNumberEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'certificationNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNumberGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'certificationNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNumberLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'certificationNumber',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      certificationNumberBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'certificationNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checklistIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'checklistId',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checklistIdGreaterThan(
    int value, {
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checklistIdLessThan(
    int value, {
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checklistIdBetween(
    int lower,
    int upper, {
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      cityIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      cityIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      cityIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cityId',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      cityIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cityId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correctiveAction',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correctiveAction',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctiveAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctiveAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctiveAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctiveAction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'correctiveAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'correctiveAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'correctiveAction',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'correctiveAction',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctiveAction',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      correctiveActionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'correctiveAction',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqCapacityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqCapacity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqCapacityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eqCapacity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqCapacityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eqCapacity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqCapacityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eqCapacity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqCapacityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eqCapacity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqCapacityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eqCapacity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqCapacityContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eqCapacity',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqCapacityMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eqCapacity',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqCapacityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqCapacity',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqCapacityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eqCapacity',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition> eqIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eqId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eqId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition> eqIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eqId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eqId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eqId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eqId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition> eqIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eqId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqId',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eqId',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqLocationEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqLocationGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eqLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqLocationLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eqLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqLocationBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eqLocation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqLocationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eqLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqLocationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eqLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqLocationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eqLocation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqLocationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eqLocation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqLocationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqLocationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eqLocation',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqManfEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqManf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqManfGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eqManf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqManfLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eqManf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqManfBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eqManf',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqManfStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eqManf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqManfEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eqManf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqManfContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eqManf',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqManfMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eqManf',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqManfIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqManf',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqManfIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eqManf',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqModelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqModelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eqModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqModelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eqModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqModelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eqModel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqModelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eqModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqModelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eqModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqModelContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eqModel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqModelMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eqModel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqModelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqModel',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqModelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eqModel',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqSerialEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqSerial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqSerialGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eqSerial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqSerialLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eqSerial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqSerialBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eqSerial',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqSerialStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'eqSerial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqSerialEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'eqSerial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqSerialContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'eqSerial',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqSerialMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'eqSerial',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqSerialIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqSerial',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqSerialIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'eqSerial',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqTypeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'eqType',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqTypeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'eqType',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqTypeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'eqType',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      eqTypeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'eqType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      equipmentNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'equipmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      equipmentNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'equipmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      equipmentNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'equipmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      equipmentNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'equipmentName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      equipmentNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'equipmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      equipmentNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'equipmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      equipmentNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'equipmentName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      equipmentNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'equipmentName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      equipmentNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'equipmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      equipmentNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'equipmentName',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectionDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inspectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectionDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inspectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectionDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inspectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectionDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inspectionDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectionDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'inspectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectionDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'inspectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectionDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'inspectionDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectionDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'inspectionDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectionDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inspectionDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectionDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'inspectionDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectorIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inspectorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectorIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inspectorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectorIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inspectorId',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      inspectorIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inspectorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      isLoadTestAddedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isLoadTestAdded',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      isLoadTestAddedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isLoadTestAdded',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      isLoadTestAddedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isLoadTestAdded',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      isSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isSynced',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      isSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isSynced',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      isSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadCellUsedToDetermineExactTestLoadWeightIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'loadCellUsedToDetermineExactTestLoadWeight',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxAllowedDeflectionOne',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxAllowedDeflectionOne',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAllowedDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxAllowedDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxAllowedDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxAllowedDeflectionOne',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'maxAllowedDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'maxAllowedDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'maxAllowedDeflectionOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'maxAllowedDeflectionOne',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAllowedDeflectionOne',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionOneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'maxAllowedDeflectionOne',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxAllowedDeflectionThree',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxAllowedDeflectionThree',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAllowedDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxAllowedDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxAllowedDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxAllowedDeflectionThree',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'maxAllowedDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'maxAllowedDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'maxAllowedDeflectionThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'maxAllowedDeflectionThree',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAllowedDeflectionThree',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionThreeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'maxAllowedDeflectionThree',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'maxAllowedDeflectionTwo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'maxAllowedDeflectionTwo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAllowedDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'maxAllowedDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'maxAllowedDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'maxAllowedDeflectionTwo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'maxAllowedDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'maxAllowedDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'maxAllowedDeflectionTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'maxAllowedDeflectionTwo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'maxAllowedDeflectionTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      maxAllowedDeflectionTwoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'maxAllowedDeflectionTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      newStickerEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'newSticker',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      newStickerGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'newSticker',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      newStickerLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'newSticker',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      newStickerBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'newSticker',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      notesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      notesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'notes',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      notesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'notes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      notesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'notes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      notesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      notesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'notes',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      orgCodeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orgCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      orgCodeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'orgCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      orgCodeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'orgCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      orgCodeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'orgCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      orgCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'orgCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      orgCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'orgCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      orgCodeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'orgCode',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      orgCodeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'orgCode',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      orgCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'orgCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      orgCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'orgCode',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevIssuedByEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prevIssuedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevIssuedByGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prevIssuedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevIssuedByLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prevIssuedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevIssuedByBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prevIssuedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevIssuedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prevIssuedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevIssuedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prevIssuedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevIssuedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prevIssuedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevIssuedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prevIssuedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevIssuedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prevIssuedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevIssuedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prevIssuedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevStickerEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prevSticker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevStickerGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'prevSticker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevStickerLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'prevSticker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevStickerBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'prevSticker',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevStickerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'prevSticker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevStickerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'prevSticker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevStickerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'prevSticker',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevStickerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'prevSticker',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevStickerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'prevSticker',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      prevStickerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'prevSticker',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'procedureReferenceNo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'procedureReferenceNo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'procedureReferenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'procedureReferenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'procedureReferenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'procedureReferenceNo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'procedureReferenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'procedureReferenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'procedureReferenceNo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'procedureReferenceNo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'procedureReferenceNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      procedureReferenceNoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'procedureReferenceNo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'refStandardForLoadTest',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'refStandardForLoadTest',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refStandardForLoadTest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'refStandardForLoadTest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'refStandardForLoadTest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'refStandardForLoadTest',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'refStandardForLoadTest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'refStandardForLoadTest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'refStandardForLoadTest',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'refStandardForLoadTest',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'refStandardForLoadTest',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      refStandardForLoadTestIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'refStandardForLoadTest',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'resultOne',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'resultOne',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resultOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resultOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resultOne',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'resultOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'resultOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'resultOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'resultOne',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultOne',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultOneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'resultOne',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'resultThree',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'resultThree',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resultThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resultThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resultThree',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'resultThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'resultThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'resultThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'resultThree',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultThree',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultThreeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'resultThree',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'resultTwo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'resultTwo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'resultTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'resultTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'resultTwo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'resultTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'resultTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'resultTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'resultTwo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'resultTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      resultTwoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'resultTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'spanOne',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'spanOne',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spanOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spanOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spanOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spanOne',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'spanOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'spanOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'spanOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'spanOne',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spanOne',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanOneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spanOne',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'spanThree',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'spanThree',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spanThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spanThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spanThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spanThree',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'spanThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'spanThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'spanThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'spanThree',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spanThree',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanThreeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spanThree',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'spanTwo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'spanTwo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spanTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'spanTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'spanTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'spanTwo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'spanTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'spanTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'spanTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'spanTwo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'spanTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      spanTwoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'spanTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      stickerExpireDateEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stickerExpireDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      stickerExpireDateGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'stickerExpireDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      stickerExpireDateLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'stickerExpireDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      stickerExpireDateBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'stickerExpireDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      stickerExpireDateStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'stickerExpireDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      stickerExpireDateEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'stickerExpireDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      stickerExpireDateContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'stickerExpireDate',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      stickerExpireDateMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'stickerExpireDate',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      stickerExpireDateIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'stickerExpireDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      stickerExpireDateIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'stickerExpireDate',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'testPerformedBy',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'testPerformedBy',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'testPerformedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'testPerformedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'testPerformedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'testPerformedBy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'testPerformedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'testPerformedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'testPerformedBy',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'testPerformedBy',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'testPerformedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testPerformedByIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'testPerformedBy',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testResultEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'testResult',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testResultGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'testResult',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testResultLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'testResult',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testResultBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'testResult',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testResultStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'testResult',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testResultEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'testResult',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testResultContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'testResult',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testResultMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'testResult',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testResultIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'testResult',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testResultIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'testResult',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testTypeEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'testType',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testTypeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'testType',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testTypeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'testType',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      testTypeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'testType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weightCalculationVerified',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weightCalculationVerified',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightCalculationVerified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weightCalculationVerified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weightCalculationVerified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weightCalculationVerified',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weightCalculationVerified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weightCalculationVerified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weightCalculationVerified',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weightCalculationVerified',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightCalculationVerified',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightCalculationVerifiedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weightCalculationVerified',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weightOfLoadAppliedOne',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weightOfLoadAppliedOne',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightOfLoadAppliedOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weightOfLoadAppliedOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weightOfLoadAppliedOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weightOfLoadAppliedOne',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weightOfLoadAppliedOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weightOfLoadAppliedOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weightOfLoadAppliedOne',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weightOfLoadAppliedOne',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightOfLoadAppliedOne',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedOneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weightOfLoadAppliedOne',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weightOfLoadAppliedThree',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weightOfLoadAppliedThree',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightOfLoadAppliedThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weightOfLoadAppliedThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weightOfLoadAppliedThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weightOfLoadAppliedThree',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weightOfLoadAppliedThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weightOfLoadAppliedThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weightOfLoadAppliedThree',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weightOfLoadAppliedThree',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightOfLoadAppliedThree',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedThreeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weightOfLoadAppliedThree',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weightOfLoadAppliedTwo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weightOfLoadAppliedTwo',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightOfLoadAppliedTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weightOfLoadAppliedTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weightOfLoadAppliedTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weightOfLoadAppliedTwo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'weightOfLoadAppliedTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'weightOfLoadAppliedTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'weightOfLoadAppliedTwo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'weightOfLoadAppliedTwo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weightOfLoadAppliedTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      weightOfLoadAppliedTwoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'weightOfLoadAppliedTwo',
        value: '',
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition> woIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'woId',
        value: value,
      ));
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      woIdGreaterThan(
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      woIdLessThan(
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

  QueryBuilder<Certification, Certification, QAfterFilterCondition> woIdBetween(
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
}

extension CertificationQueryObject
    on QueryBuilder<Certification, Certification, QFilterCondition> {}

extension CertificationQueryLinks
    on QueryBuilder<Certification, Certification, QFilterCondition> {
  QueryBuilder<Certification, Certification, QAfterFilterCondition> workOrder(
      FilterQuery<WorkOrder> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'workOrder');
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      workOrderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'workOrder', 0, true, 0, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checkListItems(FilterQuery<CheckListItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'checkListItems');
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checkListItemsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'checkListItems', length, true, length, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checkListItemsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'checkListItems', 0, true, 0, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checkListItemsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'checkListItems', 0, false, 999999, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checkListItemsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'checkListItems', 0, true, length, include);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checkListItemsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'checkListItems', length, include, 999999, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      checkListItemsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'checkListItems', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      attachedPhotos(FilterQuery<AttachedPhoto> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'attachedPhotos');
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      attachedPhotosLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'attachedPhotos', length, true, length, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      attachedPhotosIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'attachedPhotos', 0, true, 0, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      attachedPhotosIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'attachedPhotos', 0, false, 999999, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      attachedPhotosLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'attachedPhotos', 0, true, length, include);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      attachedPhotosLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'attachedPhotos', length, include, 999999, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      attachedPhotosLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'attachedPhotos', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadTestCheckListItems(FilterQuery<LoadTestCheckListItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'loadTestCheckListItems');
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadTestCheckListItemsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'loadTestCheckListItems', length, true, length, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadTestCheckListItemsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'loadTestCheckListItems', 0, true, 0, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadTestCheckListItemsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'loadTestCheckListItems', 0, false, 999999, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadTestCheckListItemsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'loadTestCheckListItems', 0, true, length, include);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadTestCheckListItemsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'loadTestCheckListItems', length, include, 999999, true);
    });
  }

  QueryBuilder<Certification, Certification, QAfterFilterCondition>
      loadTestCheckListItemsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'loadTestCheckListItems', lower, includeLower, upper, includeUpper);
    });
  }
}

extension CertificationQuerySortBy
    on QueryBuilder<Certification, Certification, QSortBy> {
  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByActualDeflectionOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionOne', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByActualDeflectionOneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionOne', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByActualDeflectionThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionThree', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByActualDeflectionThreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionThree', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByActualDeflectionTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionTwo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByActualDeflectionTwoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionTwo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByAramcoReportNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoReportNo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByAramcoReportNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoReportNo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByCertificationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationName', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByCertificationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationName', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByCertificationNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationNumber', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByCertificationNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationNumber', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByCityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByCorrectiveAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctiveAction', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByCorrectiveActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctiveAction', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqCapacity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqCapacity', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByEqCapacityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqCapacity', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqId', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqId', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqLocation', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByEqLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqLocation', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqManf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqManf', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqManfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqManf', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqModel', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqModel', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqSerial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqSerial', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByEqSerialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqSerial', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqType', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByEqTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqType', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByEquipmentName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipmentName', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByEquipmentNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipmentName', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByInspectionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionDate', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByInspectionDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionDate', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByInspectorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectorId', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByInspectorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectorId', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByIsLoadTestAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLoadTestAdded', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByIsLoadTestAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLoadTestAdded', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByLoadCellUsedToDetermineExactTestLoadWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
          r'loadCellUsedToDetermineExactTestLoadWeight', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByLoadCellUsedToDetermineExactTestLoadWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
          r'loadCellUsedToDetermineExactTestLoadWeight', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByMaxAllowedDeflectionOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionOne', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByMaxAllowedDeflectionOneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionOne', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByMaxAllowedDeflectionThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionThree', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByMaxAllowedDeflectionThreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionThree', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByMaxAllowedDeflectionTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionTwo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByMaxAllowedDeflectionTwoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionTwo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByNewSticker() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newSticker', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByNewStickerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newSticker', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByOrgCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orgCode', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByOrgCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orgCode', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByPrevIssuedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prevIssuedBy', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByPrevIssuedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prevIssuedBy', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByPrevSticker() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prevSticker', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByPrevStickerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prevSticker', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByProcedureReferenceNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'procedureReferenceNo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByProcedureReferenceNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'procedureReferenceNo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByRefStandardForLoadTest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refStandardForLoadTest', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByRefStandardForLoadTestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refStandardForLoadTest', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByResultOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultOne', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByResultOneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultOne', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByResultThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultThree', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByResultThreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultThree', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByResultTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultTwo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByResultTwoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultTwo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortBySpanOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanOne', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortBySpanOneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanOne', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortBySpanThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanThree', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortBySpanThreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanThree', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortBySpanTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanTwo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortBySpanTwoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanTwo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByStickerExpireDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stickerExpireDate', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByStickerExpireDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stickerExpireDate', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByTestPerformedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testPerformedBy', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByTestPerformedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testPerformedBy', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByTestResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testResult', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByTestResultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testResult', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByTestType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testType', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByTestTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testType', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByWeightCalculationVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightCalculationVerified', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByWeightCalculationVerifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightCalculationVerified', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByWeightOfLoadAppliedOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedOne', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByWeightOfLoadAppliedOneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedOne', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByWeightOfLoadAppliedThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedThree', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByWeightOfLoadAppliedThreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedThree', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByWeightOfLoadAppliedTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedTwo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      sortByWeightOfLoadAppliedTwoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedTwo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> sortByWoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.desc);
    });
  }
}

extension CertificationQuerySortThenBy
    on QueryBuilder<Certification, Certification, QSortThenBy> {
  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByActualDeflectionOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionOne', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByActualDeflectionOneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionOne', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByActualDeflectionThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionThree', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByActualDeflectionThreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionThree', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByActualDeflectionTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionTwo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByActualDeflectionTwoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'actualDeflectionTwo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByAramcoReportNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoReportNo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByAramcoReportNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aramcoReportNo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByCertificationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationName', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByCertificationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationName', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByCertificationNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationNumber', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByCertificationNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'certificationNumber', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByChecklistIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'checklistId', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByCityIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cityId', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByCorrectiveAction() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctiveAction', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByCorrectiveActionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctiveAction', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqCapacity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqCapacity', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByEqCapacityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqCapacity', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqId', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqId', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqLocation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqLocation', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByEqLocationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqLocation', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqManf() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqManf', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqManfDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqManf', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqModel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqModel', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqModelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqModel', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqSerial() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqSerial', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByEqSerialDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqSerial', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqType', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByEqTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'eqType', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByEquipmentName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipmentName', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByEquipmentNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'equipmentName', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByInspectionDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionDate', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByInspectionDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectionDate', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByInspectorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectorId', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByInspectorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inspectorId', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByIsLoadTestAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLoadTestAdded', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByIsLoadTestAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLoadTestAdded', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByIsSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSynced', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByLoadCellUsedToDetermineExactTestLoadWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
          r'loadCellUsedToDetermineExactTestLoadWeight', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByLoadCellUsedToDetermineExactTestLoadWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
          r'loadCellUsedToDetermineExactTestLoadWeight', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByMaxAllowedDeflectionOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionOne', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByMaxAllowedDeflectionOneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionOne', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByMaxAllowedDeflectionThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionThree', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByMaxAllowedDeflectionThreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionThree', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByMaxAllowedDeflectionTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionTwo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByMaxAllowedDeflectionTwoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'maxAllowedDeflectionTwo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByNewSticker() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newSticker', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByNewStickerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'newSticker', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByNotes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByNotesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'notes', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByOrgCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orgCode', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByOrgCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'orgCode', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByPrevIssuedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prevIssuedBy', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByPrevIssuedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prevIssuedBy', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByPrevSticker() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prevSticker', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByPrevStickerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'prevSticker', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByProcedureReferenceNo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'procedureReferenceNo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByProcedureReferenceNoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'procedureReferenceNo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByRefStandardForLoadTest() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refStandardForLoadTest', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByRefStandardForLoadTestDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'refStandardForLoadTest', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByResultOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultOne', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByResultOneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultOne', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByResultThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultThree', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByResultThreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultThree', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByResultTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultTwo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByResultTwoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'resultTwo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenBySpanOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanOne', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenBySpanOneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanOne', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenBySpanThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanThree', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenBySpanThreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanThree', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenBySpanTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanTwo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenBySpanTwoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'spanTwo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByStickerExpireDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stickerExpireDate', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByStickerExpireDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'stickerExpireDate', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByTestPerformedBy() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testPerformedBy', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByTestPerformedByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testPerformedBy', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByTestResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testResult', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByTestResultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testResult', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByTestType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testType', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByTestTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'testType', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByWeightCalculationVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightCalculationVerified', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByWeightCalculationVerifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightCalculationVerified', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByWeightOfLoadAppliedOne() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedOne', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByWeightOfLoadAppliedOneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedOne', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByWeightOfLoadAppliedThree() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedThree', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByWeightOfLoadAppliedThreeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedThree', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByWeightOfLoadAppliedTwo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedTwo', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy>
      thenByWeightOfLoadAppliedTwoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weightOfLoadAppliedTwo', Sort.desc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.asc);
    });
  }

  QueryBuilder<Certification, Certification, QAfterSortBy> thenByWoIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'woId', Sort.desc);
    });
  }
}

extension CertificationQueryWhereDistinct
    on QueryBuilder<Certification, Certification, QDistinct> {
  QueryBuilder<Certification, Certification, QDistinct>
      distinctByActualDeflectionOne({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actualDeflectionOne',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByActualDeflectionThree({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actualDeflectionThree',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByActualDeflectionTwo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'actualDeflectionTwo',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByAramcoReportNo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aramcoReportNo',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByCertificationName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'certificationName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByCertificationNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'certificationNumber');
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByChecklistId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'checklistId');
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByCityId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cityId');
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByCorrectiveAction({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correctiveAction',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByEqCapacity(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eqCapacity', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByEqId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eqId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByEqLocation(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eqLocation', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByEqManf(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eqManf', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByEqModel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eqModel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByEqSerial(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eqSerial', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByEqType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'eqType');
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByEquipmentName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'equipmentName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByInspectionDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inspectionDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByInspectorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inspectorId');
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByIsLoadTestAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isLoadTestAdded');
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByIsSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSynced');
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByLoadCellUsedToDetermineExactTestLoadWeight(
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'loadCellUsedToDetermineExactTestLoadWeight',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByMaxAllowedDeflectionOne({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxAllowedDeflectionOne',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByMaxAllowedDeflectionThree({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxAllowedDeflectionThree',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByMaxAllowedDeflectionTwo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'maxAllowedDeflectionTwo',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByNewSticker() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'newSticker');
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByNotes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'notes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByOrgCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'orgCode', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByPrevIssuedBy(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prevIssuedBy', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByPrevSticker(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'prevSticker', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByProcedureReferenceNo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'procedureReferenceNo',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByRefStandardForLoadTest({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'refStandardForLoadTest',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByResultOne(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'resultOne', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByResultThree(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'resultThree', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByResultTwo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'resultTwo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctBySpanOne(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spanOne', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctBySpanThree(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spanThree', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctBySpanTwo(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'spanTwo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByStickerExpireDate({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'stickerExpireDate',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByTestPerformedBy({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'testPerformedBy',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByTestResult(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'testResult', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByTestType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'testType');
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByWeightCalculationVerified({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weightCalculationVerified',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByWeightOfLoadAppliedOne({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weightOfLoadAppliedOne',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByWeightOfLoadAppliedThree({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weightOfLoadAppliedThree',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct>
      distinctByWeightOfLoadAppliedTwo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weightOfLoadAppliedTwo',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Certification, Certification, QDistinct> distinctByWoId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'woId');
    });
  }
}

extension CertificationQueryProperty
    on QueryBuilder<Certification, Certification, QQueryProperty> {
  QueryBuilder<Certification, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      actualDeflectionOneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actualDeflectionOne');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      actualDeflectionThreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actualDeflectionThree');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      actualDeflectionTwoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'actualDeflectionTwo');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      aramcoReportNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aramcoReportNo');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      certificationNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'certificationName');
    });
  }

  QueryBuilder<Certification, int?, QQueryOperations>
      certificationNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'certificationNumber');
    });
  }

  QueryBuilder<Certification, int, QQueryOperations> checklistIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'checklistId');
    });
  }

  QueryBuilder<Certification, int, QQueryOperations> cityIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cityId');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      correctiveActionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correctiveAction');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations> eqCapacityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eqCapacity');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations> eqIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eqId');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations> eqLocationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eqLocation');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations> eqManfProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eqManf');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations> eqModelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eqModel');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations> eqSerialProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eqSerial');
    });
  }

  QueryBuilder<Certification, int, QQueryOperations> eqTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'eqType');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations>
      equipmentNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'equipmentName');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations>
      inspectionDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inspectionDate');
    });
  }

  QueryBuilder<Certification, int, QQueryOperations> inspectorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inspectorId');
    });
  }

  QueryBuilder<Certification, bool?, QQueryOperations>
      isLoadTestAddedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isLoadTestAdded');
    });
  }

  QueryBuilder<Certification, bool?, QQueryOperations> isSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSynced');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      loadCellUsedToDetermineExactTestLoadWeightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query
          .addPropertyName(r'loadCellUsedToDetermineExactTestLoadWeight');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      maxAllowedDeflectionOneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxAllowedDeflectionOne');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      maxAllowedDeflectionThreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxAllowedDeflectionThree');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      maxAllowedDeflectionTwoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'maxAllowedDeflectionTwo');
    });
  }

  QueryBuilder<Certification, int, QQueryOperations> newStickerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'newSticker');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations> notesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notes');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations> orgCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'orgCode');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations> prevIssuedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prevIssuedBy');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations> prevStickerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'prevSticker');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      procedureReferenceNoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'procedureReferenceNo');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      refStandardForLoadTestProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'refStandardForLoadTest');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations> resultOneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'resultOne');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations> resultThreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'resultThree');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations> resultTwoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'resultTwo');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations> spanOneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spanOne');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations> spanThreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spanThree');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations> spanTwoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'spanTwo');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations>
      stickerExpireDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'stickerExpireDate');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      testPerformedByProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'testPerformedBy');
    });
  }

  QueryBuilder<Certification, String, QQueryOperations> testResultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'testResult');
    });
  }

  QueryBuilder<Certification, int, QQueryOperations> testTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'testType');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      weightCalculationVerifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weightCalculationVerified');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      weightOfLoadAppliedOneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weightOfLoadAppliedOne');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      weightOfLoadAppliedThreeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weightOfLoadAppliedThree');
    });
  }

  QueryBuilder<Certification, String?, QQueryOperations>
      weightOfLoadAppliedTwoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weightOfLoadAppliedTwo');
    });
  }

  QueryBuilder<Certification, int, QQueryOperations> woIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'woId');
    });
  }
}
