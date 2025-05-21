import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/check_list_items/check_list_item.dart';
import 'package:test_workapp/collections/checklists/checklist.dart';
import 'package:test_workapp/collections/checklists/checklist_details.dart';
import 'package:test_workapp/collections/cities/city.dart';
import 'package:test_workapp/collections/customers/customer.dart';
import 'package:test_workapp/collections/departments/department.dart';
import 'package:test_workapp/collections/equipments/equipment.dart';
import 'package:test_workapp/collections/images/local_image.dart';
import 'package:test_workapp/collections/load_test_checklist_items/load_test_check_list_item.dart';
import 'package:test_workapp/collections/regions/region.dart';
import 'package:test_workapp/collections/stickers/sticker.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/collections/work_orders_assigned/work_order_assigned.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/features/certification/domain/entities/load_test_details_entity.dart';
import 'package:test_workapp/features/certification/domain/entities/load_test_entity.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_details_entity.dart';
import 'package:test_workapp/features/checklists/domain/entities/checklist_entity.dart';
import 'package:test_workapp/features/checklists/presentation/cubit/checklists_cubit.dart';
import 'package:test_workapp/features/cities/domain/entities/city_entity.dart';
import 'package:test_workapp/features/cities/presentation/cubit/cities_cubit.dart';
import 'package:test_workapp/features/customers/domain/entities/customer_entity.dart';
import 'package:test_workapp/features/customers/presentation/cubit/customers_cubit.dart';
import 'package:test_workapp/features/departments/domain/entities/departments_entity.dart';
import 'package:test_workapp/features/departments/presentation/cubit/departments_cubit.dart';
import 'package:test_workapp/features/equipments/domain/entities/equipment_entity.dart';
import 'package:test_workapp/features/equipments/presentation/cubit/equipments_cubit.dart';
import 'package:test_workapp/features/regions/domain/entities/region_entity.dart';
import 'package:test_workapp/features/regions/presentation/cubit/regions_cubit.dart';
import 'package:test_workapp/features/sticker/domain/entities/sticker_entity.dart';
import 'package:test_workapp/features/sticker/presentation/cubit/sticker_cubit.dart';
import 'package:test_workapp/features/users/domain/entities/user_details_entity.dart';
import 'package:test_workapp/features/users/domain/entities/user_entity.dart';
import 'package:test_workapp/features/users/domain/entities/user_job_entity.dart';
import 'package:test_workapp/features/users/presentation/cubit/users_cubit.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_assigned_entity.dart';
import 'package:test_workapp/features/work_orders/domain/entities/work_order_entity.dart';
import 'package:test_workapp/features/work_orders/presentation/cubit/work_orders_cubit.dart';
import 'package:test_workapp/isar_service.dart';
import 'package:test_workapp/collections/users/user.dart';
import 'package:test_workapp/collections/users/user_details.dart';
import 'package:test_workapp/collections/users/user_jobs.dart';

part 'sync_state.dart';

class SyncCubit extends Cubit<SyncState> {
  SyncCubit() : super(SyncInitial());

  //! Insert All Data at once
  Future<void> insertAllData({
    required IsarService isarService,
    required UsersCubit usersCubit,
    required StickerCubit stickerCubit,
    required ChecklistsCubit checklistsCubit,
    required DepartmentsCubit departmentsCubit,
    required EquipmentsCubit equipmentsCubit,
    required CustomersCubit customersCubit,
    required RegionsCubit regionsCubit,
    required CitiesCubit citiesCubit,
    required WorkOrdersCubit workOrdersCubit,
  }) async {
    final insertFutures = <Future>[];
    insertFutures.add(insertUsersData(
      isarService: isarService,
      usersCubit: usersCubit,
    ));
    insertFutures.add(insertUsersDetailsData(
      isarService: isarService,
      usersCubit: usersCubit,
    ));
    insertFutures.add(insertUsersJobsData(
      isarService: isarService,
      usersCubit: usersCubit,
    ));

    insertFutures.add(insertStickersData(
      isarService: isarService,
      stickerCubit: stickerCubit,
    ));

    insertFutures.add(insertChecklistsAndChecklistsDetailsData(
      isarService: isarService,
      checklistsCubit: checklistsCubit,
    ));

    insertFutures.add(insertDepartmentsData(
      isarService: isarService,
      departmentsCubit: departmentsCubit,
    ));

    insertFutures.add(insertEquipmentsData(
      isarService: isarService,
      equipmentsCubit: equipmentsCubit,
    ));

    insertFutures.add(insertCustomersData(
      isarService: isarService,
      customersCubit: customersCubit,
    ));

    insertFutures.add(insertRegionsData(
      isarService: isarService,
      regionsCubit: regionsCubit,
    ));

    insertFutures.add(insertCitiesData(
      isarService: isarService,
      citiesCubit: citiesCubit,
    ));

    insertFutures.add(insertWorkOrdersData(
      isarService: isarService,
      workOrdersCubit: workOrdersCubit,
    ));

    insertFutures.add(insertWorkOrdersAssignedData(
      isarService: isarService,
      workOrdersCubit: workOrdersCubit,
    ));

    await Future.wait(insertFutures);
  }

  Future<void> insertUsersData({
    required IsarService isarService,
    required UsersCubit usersCubit,
  }) async {
    await isarService.deleteAllUsers();

    List<User> usersList = [];
    for (UserEntity user in usersCubit.usersList) {
      usersList.add(User(
        userId: user.userId,
        userName: user.username,
        email: user.email,
        password: user.password,
        enabled: user.enabled,
        userHash: user.userHash,
        accessLevel: user.accessLevel,
      ));
    }
    await isarService.addAllUsers(usersList);
  }

  Future<void> insertUsersDetailsData({
    required IsarService isarService,
    required UsersCubit usersCubit,
  }) async {
    await isarService.deleteAllUsersDetails();
    List<UserDetails> usersDetailsList = [];
    for (UserDetailsEntity userDetails in usersCubit.usersDetailsList) {
      usersDetailsList.add(UserDetails(
        userId: userDetails.userId,
        fullNameEn: userDetails.fullNameEn,
        mobile: userDetails.mobile,
        empCode: userDetails.empCode,
        email: userDetails.email,
        digitalSig: userDetails.digitalSig,
        badgeNo: userDetails.badgeNo,
        jobTitleId: userDetails.jobTitleId,
      ));
    }
    await isarService.addAllUsersDetails(usersDetailsList);
  }

  Future<void> insertUsersJobsData({
    required IsarService isarService,
    required UsersCubit usersCubit,
  }) async {
    await isarService.deleteAllUsersJobs();
    List<UserJobs> usersJobslist = [];
    for (UserJobEntity userJobs in usersCubit.usersJobsList) {
      usersJobslist.add(UserJobs(
        iD: userJobs.id,
        userId: userJobs.userId,
        jobTitleId: userJobs.jobTitleId,
      ));
    }
    await isarService.addAllUsersJobs(usersJobslist);
  }

  Future<void> insertStickersData({
    required IsarService isarService,
    required StickerCubit stickerCubit,
  }) async {
    await isarService.deleteAllStickers();
    List<Sticker> stickersList = [];
    for (StickerEntity sticker in stickerCubit.stickersList) {
      stickersList.add(Sticker(
        stickerType: sticker.stickerType,
        fromNo: sticker.fromNo,
        toNo: sticker.toNo,
        bookNo: sticker.bookNo,
        assignedTo: sticker.assignedTo,
        assignedBy: sticker.assignedBy,
        assignedDate: sticker.assignedDate,
        returned: sticker.returned,
      ));
    }
    await isarService.addAllStickers(stickersList);
  }

  Future<void> insertChecklistsAndChecklistsDetailsData({
    required IsarService isarService,
    required ChecklistsCubit checklistsCubit,
  }) async {
    await isarService.deleteAllChecklists();
    List<Checklist> checklistsList = [];
    List<int> checklistsWithAramcoCode = [];
    for (ChecklistEntity checklist in checklistsCubit.checklistsList) {
      checklistsList.add(Checklist(
        checklistId: checklist.checklistId,
        checklistTitle: checklist.checklistTitle,
        standard: checklist.standard,
        checklistTestCode: checklist.checklistTestCode,
        aramcoChecklistCode: checklist.aramcoChecklistCode,
      ));

      if (checklist.aramcoChecklistCode != null) {
        checklistsWithAramcoCode.add(checklist.checklistId);
      }
    }
    await isarService.addAllChecklists(checklistsList);
    await isarService.deleteAllChecklistsDetails();
    List<ChecklistDetails> checklistsDetailsList = [];
    for (ChecklistDetailsEntity checklistDetails
        in checklistsCubit.checklistsDetailsList) {
      if (checklistsWithAramcoCode.contains(checklistDetails.checklistId)) {
        checklistsDetailsList.add(ChecklistDetails(
          itemId: checklistDetails.itemId,
          checklistId: checklistDetails.checklistId,
          parentId: checklistDetails.parentId,
          itemTitle: checklistDetails.itemTitle,
          reference: checklistDetails.reference,
          sortorder: checklistDetails.sortorder,
        ));
      }
    }
    await isarService.addAllChecklistsDetails(checklistsDetailsList);
  }

  // Future<void> insertChecklistsDetailsData({
  //   required IsarService isarService,
  //   required ChecklistsCubit checklistsCubit,
  // }) async {
  //   final List<Checklist> checklistWithAramcoCodeList =
  //       await isarService.getAllChecklistsHasAramcoCode();
  //   List<int> checklistsWithAramcoCode = [];
  //   for (Checklist checklist in checklistWithAramcoCodeList) {
  //     if (checklist.checklistId != null) {
  //       checklistsWithAramcoCode.add(checklist.checklistId!);
  //     }
  //   }
  //   await isarService.deleteAllChecklistsDetails();
  //   List<ChecklistDetails> checklistsDetailsList = [];
  //   for (ChecklistDetailsEntity checklistDetails
  //       in checklistsCubit.checklistsDetailsList) {
  //     if (checklistsWithAramcoCode.contains(checklistDetails.checklistId)) {
  //       checklistsDetailsList.add(ChecklistDetails(
  //         itemId: checklistDetails.itemId,
  //         checklistId: checklistDetails.checklistId,
  //         parentId: checklistDetails.parentId,
  //         itemTitle: checklistDetails.itemTitle,
  //         reference: checklistDetails.reference,
  //         sortorder: checklistDetails.sortorder,
  //       ));
  //     }
  //   }
  //   await isarService.addAllChecklistsDetails(checklistsDetailsList);
  // }

  Future<void> insertDepartmentsData({
    required IsarService isarService,
    required DepartmentsCubit departmentsCubit,
  }) async {
    await isarService.deleteAllDepartments();
    List<Department> departmentsLists = [];
    for (DepartmentEntity department in departmentsCubit.departmentsList) {
      departmentsLists.add(Department(
        departmentId: department.departmentId,
        companyId: department.companyId,
        departmentNameAr: department.departmentNameAr,
        departmentNameEn: department.departmentNameEn,
        enabled: department.enabled,
        parentId: department.parentId,
        sortorder: department.sortorder,
      ));
    }
    await isarService.addAllDepartments(departmentsLists);
  }

  Future<void> insertEquipmentsData({
    required IsarService isarService,
    required EquipmentsCubit equipmentsCubit,
  }) async {
    await isarService.deleteAllEquipments();
    List<Equipment> equipmentsList = [];
    for (EquipmentEntity equipment in equipmentsCubit.equipmentsList) {
      equipmentsList.add(Equipment(
        eqId: equipment.eqId,
        categoryId: equipment.categoryId,
        eqName: equipment.eqName,
        standard: equipment.standard,
        checklistId: equipment.checklistId,
        aramcoChecklistId: equipment.aramcoChecklistId,
        enabled: equipment.enabled,
      ));
    }
    await isarService.addAllEquipments(equipmentsList);
  }

  Future<void> insertCustomersData({
    required IsarService isarService,
    required CustomersCubit customersCubit,
  }) async {
    await isarService.deleteAllCustomers();
    List<Customer> customersList = [];
    for (CustomerEntity customer in customersCubit.customersList) {
      customersList.add(Customer(
        customerId: customer.customerId,
        customerName: customer.customerName,
      ));
    }
    await isarService.addAllCustomers(customersList);
  }

  Future<void> insertRegionsData({
    required IsarService isarService,
    required RegionsCubit regionsCubit,
  }) async {
    await isarService.deleteAllRegions();
    List<Region> regionssList = [];
    for (RegionEntity region in regionsCubit.regionsList) {
      regionssList.add(Region(
        regionId: region.regionId,
        countryCode: region.countryCode,
        regionNameAr: region.regionNameAr,
        regionNameEn: region.regionNameEn,
        enabled: region.enabled,
        coordinatorId: region.coordinatorId,
        supervisorId: region.supervisorId,
        trCoordinatorId: region.trCoordinatorId,
        salesManager: region.salesManager,
        trainingManager: region.trainingManager,
        inspectionManager: region.inspectionManager,
      ));
    }
    await isarService.addAllRegions(regionssList);
  }

  Future<void> insertCitiesData({
    required IsarService isarService,
    required CitiesCubit citiesCubit,
  }) async {
    await isarService.deleteAllCities();
    List<City> citiesList = [];
    for (CityEntity city in citiesCubit.citiesList) {
      citiesList.add(City(
        iD: city.id,
        name: city.name,
        countryCode: city.countryCode,
        regionId: city.regionId,
      ));
    }
    await isarService.addAllcitys(citiesList);
  }

  Future<void> insertWorkOrdersData({
    required IsarService isarService,
    required WorkOrdersCubit workOrdersCubit,
  }) async {
    await isarService.deleteAllWorkOrders();
    List<WorkOrder> workOrdersList = [];

    for (WorkOrderEntity workOrder in workOrdersCubit.workOrdersList) {
      //! caused delay
      // final certifications =
      //     await isarService.getCertificationsByWoId(workOrder.woId);
      WorkOrder localWorkOrder = WorkOrder(
        woId: workOrder.woId,
        customerId: workOrder.customerId,
        qrId: workOrder.qrId,
        woDate: workOrder.woDate,
        contactPLocation: workOrder.contactPLocation,
        workLocation: workOrder.workLocation,
        locationDetails: workOrder.locationDetails,
        sequence: workOrder.sequence,
        coordinatorId: workOrder.coordinatorId,
        dateAdded: workOrder.dateAdded,
        collectedCode: workOrder.collectedCode,
        closeCode: workOrder.closeCode,
        customerSign: workOrder.customerSign,
        customerName: workOrder.customerName,
        customerBadge: workOrder.customerBadge,
        customerMobile: workOrder.customerMobile,
        isSynced: false,
        isUploaded: false,
      );
      //! caused delay
      // localWorkOrder.certifications.addAll(certifications);
      workOrdersList.add(localWorkOrder);
    }
    await isarService.addAllWorkOrders(workOrdersList);
  }

  Future<void> insertWorkOrdersAssignedData({
    required IsarService isarService,
    required WorkOrdersCubit workOrdersCubit,
  }) async {
    await isarService.deleteAllWorkOrdersAssigned();
    List<WorkOrderAssigned> workOrdersAssignedList = [];
    for (WorkOrderAssignedEntity workOrderAssigned
        in workOrdersCubit.workOrdersAssignedList) {
      workOrdersAssignedList.add(WorkOrderAssigned(
        iD: workOrderAssigned.id,
        woId: workOrderAssigned.woId,
        userId: workOrderAssigned.userId,
        serviceId: workOrderAssigned.serviceId,
        serviceType: workOrderAssigned.serviceType,
        quantity: workOrderAssigned.quantity,
        fromDate: workOrderAssigned.fromDate,
        toDate: workOrderAssigned.toDate,
        timesheetFile: workOrderAssigned.timesheetFile,
        notes: workOrderAssigned.notes,
        carId: workOrderAssigned.carId,
        inspectionType: workOrderAssigned.inspectionType,
      ));
    }
    await isarService.addAllWorkOrderAssigned(workOrdersAssignedList);
  }

  //! Users
  Future<bool> syncUsersFun({
    required UsersCubit usersCubit,
  }) async {
    final result = await usersCubit.getUsersFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! Users details
  Future<bool> syncUsersDetailsFun({
    required UsersCubit usersCubit,
  }) async {
    final result = await usersCubit.getUsersDetailsFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! Users jobs
  Future<bool> syncUserJobsFun({
    required UsersCubit usersCubit,
  }) async {
    final result = await usersCubit.getUsersJobsFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! Stickers
  Future<bool> syncStickersFun({
    required StickerCubit stickerCubit,
  }) async {
    final result = await stickerCubit.getStickersFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! Checklists
  Future<bool> syncChecklistsFun({
    required ChecklistsCubit checklistsCubit,
  }) async {
    final result = await checklistsCubit.getChecklistsFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! Checklists details
  Future<bool> syncChecklistsDetailsFun({
    required ChecklistsCubit checklistsCubit,
  }) async {
    final result = await checklistsCubit.getChecklistsDetailsFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! Departments
  Future<bool> syncDepartmentsFun({
    required DepartmentsCubit departmentsCubit,
  }) async {
    final result = await departmentsCubit.getDepartmentsFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! Equipments
  Future<bool> syncEquipmentsFun({
    required EquipmentsCubit equipmentsCubit,
  }) async {
    final result = await equipmentsCubit.getEquipmentsFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! Customers
  Future<bool> syncCustomersFun({
    required CustomersCubit customersCubit,
  }) async {
    final result = await customersCubit.getCustomersFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! Regions
  Future<bool> syncRegionsFun({
    required RegionsCubit regionsCubit,
  }) async {
    final result = await regionsCubit.getRegionsFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! Cities
  Future<bool> syncCitiesFun({
    required CitiesCubit citiesCubit,
  }) async {
    final result = await citiesCubit.getCitiesFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! work orders
  Future<bool> syncWorkOrdersFun({
    required WorkOrdersCubit workOrdersCubit,
  }) async {
    final result = await workOrdersCubit.getWorkOrdersFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //! work orders assigned
  Future<bool> syncWorkOrdersAssignedFun({
    required WorkOrdersCubit workOrdersCubit,
  }) async {
    final result = await workOrdersCubit.getWorkOrdersAssignedFun();
    if (result) {
      return true;
    } else {
      return false;
    }
  }

  //!-------------------------------------------- sync all data ------------------------------------------//
  bool isAllDataSyncying = false;
  Future<void> syncAllDataFun({
    required IsarService isarService,
    required UsersCubit usersCubit,
    required StickerCubit stickerCubit,
    required ChecklistsCubit checklistsCubit,
    required DepartmentsCubit departmentsCubit,
    required EquipmentsCubit equipmentsCubit,
    required CustomersCubit customersCubit,
    required RegionsCubit regionsCubit,
    required CitiesCubit citiesCubit,
    required WorkOrdersCubit workOrdersCubit,
    required bool isInternal,
  }) async {
    isAllDataSyncying = true;

    emit(SyncAllDataLoadingState());

    final List<Future<bool>> futures = [
      syncUsersFun(usersCubit: usersCubit),
      syncUsersDetailsFun(usersCubit: usersCubit),
      syncUserJobsFun(usersCubit: usersCubit),
      syncStickersFun(stickerCubit: stickerCubit),
      syncChecklistsFun(checklistsCubit: checklistsCubit),
      syncChecklistsDetailsFun(checklistsCubit: checklistsCubit),
      syncDepartmentsFun(departmentsCubit: departmentsCubit),
      syncEquipmentsFun(equipmentsCubit: equipmentsCubit),
      syncCustomersFun(customersCubit: customersCubit),
      syncRegionsFun(regionsCubit: regionsCubit),
      syncCitiesFun(citiesCubit: citiesCubit),
      syncWorkOrdersFun(workOrdersCubit: workOrdersCubit),
      syncWorkOrdersAssignedFun(workOrdersCubit: workOrdersCubit),
    ];

    final List<bool> results = await Future.wait(futures);
    final allTrue = results.every((result) => result == true);
    // final allFalse = results.every((result) => result == false);
    if (allTrue) {
      await insertAllData(
        isarService: isarService,
        usersCubit: usersCubit,
        stickerCubit: stickerCubit,
        checklistsCubit: checklistsCubit,
        departmentsCubit: departmentsCubit,
        equipmentsCubit: equipmentsCubit,
        customersCubit: customersCubit,
        regionsCubit: regionsCubit,
        citiesCubit: citiesCubit,
        workOrdersCubit: workOrdersCubit,
      );
      isAllDataSyncying = false;

      emit(SyncAllDataLoadedState(isAllDataSynced: allTrue));
    } else {
      isAllDataSyncying = false;
      emit(
        const SyncAllDataErrorState(
          errorMessage: 'Something went wrong while syncing data',
        ),
      );
      return;
    }
  }
  //! ------------------------------------------- pause sync on error -----------------------------------//

  Future<void> pauseSyncAllDataAndShowDialog({
    required BuildContext context,
    required IsarService isarService,
    required UsersCubit usersCubit,
    required StickerCubit stickerCubit,
    required ChecklistsCubit checklistsCubit,
    required DepartmentsCubit departmentsCubit,
    required EquipmentsCubit equipmentsCubit,
    required CustomersCubit customersCubit,
    required RegionsCubit regionsCubit,
    required CitiesCubit citiesCubit,
    required WorkOrdersCubit workOrdersCubit,
    required bool isInternal,
    required String errorMessage,
  }) async {
    isAllDataSyncying = false;
    await _showMyDialog(
      context: context,
      isarService: isarService,
      usersCubit: usersCubit,
      stickerCubit: stickerCubit,
      checklistsCubit: checklistsCubit,
      departmentsCubit: departmentsCubit,
      equipmentsCubit: equipmentsCubit,
      customersCubit: customersCubit,
      regionsCubit: regionsCubit,
      citiesCubit: citiesCubit,
      workOrdersCubit: workOrdersCubit,
      isInternal: isInternal,
      errorMessage: errorMessage,
    );
  }

  Future<void> _showMyDialog({
    required BuildContext context,
    required IsarService isarService,
    required UsersCubit usersCubit,
    required StickerCubit stickerCubit,
    required ChecklistsCubit checklistsCubit,
    required DepartmentsCubit departmentsCubit,
    required EquipmentsCubit equipmentsCubit,
    required CustomersCubit customersCubit,
    required RegionsCubit regionsCubit,
    required CitiesCubit citiesCubit,
    required WorkOrdersCubit workOrdersCubit,
    required bool isInternal,
    required String errorMessage,
  }) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Sync Data',
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  errorMessage,
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
                const Text(''),
                Text(
                  'No internet',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
                const Text(''),
                Text(
                  'Try:',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
                Text(
                  '      - Reconnecting to Wi-Fi',
                  style: TextStyle(
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'Retry',
                style: TextStyle(
                  fontSize: 14.sp,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                syncAllDataFun(
                  isarService: isarService,
                  usersCubit: usersCubit,
                  stickerCubit: stickerCubit,
                  checklistsCubit: checklistsCubit,
                  departmentsCubit: departmentsCubit,
                  equipmentsCubit: equipmentsCubit,
                  customersCubit: customersCubit,
                  regionsCubit: regionsCubit,
                  citiesCubit: citiesCubit,
                  workOrdersCubit: workOrdersCubit,
                  isInternal: isInternal,
                );
              },
            ),
            TextButton(
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: AppColors.colorMain,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  //!-------------------------------------------- Sync Offline && Signed WorkOrders  ---------------------//
  bool isLocalSignedWorkOrderSyncying = false;
  Future<void> syncLocalSignedWorkOrderFun({
    required IsarService isarService,
    required WorkOrdersCubit workOrdersCubit,
    required WorkOrder workOrder,
  }) async {
    isLocalSignedWorkOrderSyncying = true;

    emit(SyncLocalSignedWorkOrderLoadingState());

    //  get all offline work orders (isSynced = false && customer signature != null)
    // final localWorkOrders =
    //     await isarService.getAllNotSyncedAndHasSignatureWorkOrders();

    //!  create temp signature image
    final LocalImage? localImage =
        await isarService.getImageByWOId(workOrder.woId);
    File? tempImageFile;
    if (localImage != null) {
      tempImageFile = createTempImageFileFun(
        imageData: localImage.imageBytes,
        imageName: localImage.imageName!,
      );
    }

    //! update work order
    WorkOrderEntity? updatedWorkOrder;
    if (tempImageFile != null) {
      updatedWorkOrder = await workOrdersCubit.updateWorkOrdersFun(
        woId: workOrder.woId,
        customerName: workOrder.customerName!,
        customerBadge: workOrder.customerBadge,
        customerMobile: workOrder.customerMobile!,
        signatureImage: tempImageFile,
        collectedCode: workOrder.collectedCode!,
      );
    }

    //! update certifications woId value
    if (updatedWorkOrder != null) {
      final certifications =
          await isarService.getCertificationsByWoId(workOrder.woId);
      for (Certification certification in certifications) {
        certification.woId = updatedWorkOrder.woId;
        await isarService.addCertification(certification);
      }

      //! update localimage workorderId value
      if (localImage != null) {
        localImage.woId = updatedWorkOrder.woId;
        await isarService.addImage(localImage);
      }

      //! update workorder Synced value
      workOrder.isSynced = true;
      //! isUploaded is using for filtering WO for current user
      workOrder.isUploaded = true;
      await isarService.addWorkOrder(workOrder);
    } else {
      isLocalSignedWorkOrderSyncying = false;
      emit(
        SyncLocalSignedWorkOrderErrorState(
          errorMessage:
              'Something went wrong while syncing WorkOrder #${workOrder.woId} data',
        ),
      );
    }
    //  get remote work orders
    // await syncWorkOrdersFun(
    //   isarService: isarService,
    //   workOrdersCubit: workOrdersCubit,
    // );

    isLocalSignedWorkOrderSyncying = false;
    emit(const SyncLocalSignedWorkOrderLoadedState(
        isLocalSignedWorkOrderSynced: true));
  }

  //!-------------------------------------------- Sync certification fun  --------------------------------//
  bool isCertificationSyncying = false;

  Future<void> syncCertificationFun({
    required IsarService isarService,
    required CertificationCubit certificationCubit,
    required Certification certification,
  }) async {
    isCertificationSyncying = true;
    emit(SyncCertificationLoadingState());
    //! checklistItems
    List<CheckListItem> checklistDetails = [];
    List<CheckListItem> checklistItems =
        await isarService.getCheckListItemsByCertificationId(certification.id);
    for (CheckListItem checkListItem in checklistItems) {
      checklistDetails.add(CheckListItem(
        checklistId: checkListItem.checklistId,
        checklistItemId: checkListItem.checklistItemId,
        passFail: checkListItem.passFail,
        comment: checkListItem.comment,
      ));
    }

    //! load test checklistitems
    if (certification.isLoadTestAdded == true) {
      List<LoadTestCheckListItem> loadTestCheckListItems = await isarService
          .getLoadTestCheckListItemsByCertificationId(certification.id);
      for (LoadTestCheckListItem loadTestCheckListItem
          in loadTestCheckListItems) {
        checklistDetails.add(CheckListItem(
          checklistId: loadTestCheckListItem.checklistId,
          checklistItemId: loadTestCheckListItem.checklistItemId,
          passFail: loadTestCheckListItem.passFail,
          comment: loadTestCheckListItem.comment,
        ));
      }
    }

    //! load test and load test details
    LoadTestEntity? loadTest;
    List<LoadTestDetailsEntity> loadTestDetails = [];
    if (certification.isLoadTestAdded == true) {
      loadTest = LoadTestEntity(
        testBy: certification.testPerformedBy ?? '',
        procedureNo: certification.procedureReferenceNo ?? '',
        refStandard: certification.refStandardForLoadTest ?? '',
        weightCalculation: certification.weightCalculationVerified ?? '',
        loadCellUsed:
            certification.loadCellUsedToDetermineExactTestLoadWeight ?? '',
      );
      //! Test one
      if (certification.weightOfLoadAppliedOne != null &&
          certification.weightOfLoadAppliedOne != '') {
        loadTestDetails.add(LoadTestDetailsEntity(
          weightOfLoad: certification.weightOfLoadAppliedOne,
          spanValue: certification.spanOne,
          maxDeflection: certification.maxAllowedDeflectionOne,
          actualDeflection: certification.actualDeflectionOne,
          result: certification.resultOne,
        ));
      }
      //! Test two
      if (certification.weightOfLoadAppliedTwo != null &&
          certification.weightOfLoadAppliedTwo != '') {
        loadTestDetails.add(LoadTestDetailsEntity(
          weightOfLoad: certification.weightOfLoadAppliedTwo,
          spanValue: certification.spanTwo,
          maxDeflection: certification.maxAllowedDeflectionTwo,
          actualDeflection: certification.actualDeflectionTwo,
          result: certification.resultTwo,
        ));
      }

      //! Test three
      if (certification.weightOfLoadAppliedThree != null &&
          certification.weightOfLoadAppliedThree != '') {
        loadTestDetails.add(LoadTestDetailsEntity(
          weightOfLoad: certification.weightOfLoadAppliedThree,
          spanValue: certification.spanThree,
          maxDeflection: certification.maxAllowedDeflectionThree,
          actualDeflection: certification.actualDeflectionThree,
          result: certification.resultThree,
        ));
      }
    }
    //! attached photos
    List<File> photos = [];
    List<List<int>> attachedPhotos = await isarService
        .getAllAttachedPhotosByCertificationId(certification.id);
    // for (List<int> photo in attachedPhotos) {
    //   File? imageFile = createTempImageFileFun(
    //     imageData: photo,
    //     imageName: 'cert_${certification.id}_eq_${certification.eqId}',
    //   );
    //   if (imageFile != null) {
    //     photos.add(imageFile);
    //   }
    // }
    for (int i = 0; i < attachedPhotos.length; i++) {
      List<int> photo = attachedPhotos[i];
      File? imageFile = createTempImageFileFun(
        imageData: photo,
        imageName: 'cert_${certification.id}_eq_${certification.eqId}_$i',
      );
      if (imageFile != null) {
        photos.add(imageFile);
      }
    }

    await certificationCubit
        .createRemoteCertificationFun(
      woId: certification.woId,
      testType: certification.testType,
      aramcoReportNo: certification.aramcoReportNo,
      inspectionDate: certification.inspectionDate,
      eqType: certification.eqType,
      checklistDetails: checklistDetails,
      testResult: certification.testResult,
      cityId: certification.cityId,
      orgCode: certification.orgCode,
      prevSticker: certification.prevSticker,
      prevIssuedBy: certification.prevIssuedBy,
      eqId: certification.eqId,
      eqLocation: certification.eqLocation,
      eqCapacity: certification.eqCapacity,
      eqSerial: certification.eqSerial,
      eqManf: certification.eqManf,
      eqModel: certification.eqModel,
      newSticker: certification.newSticker,
      stickerExpireDate: certification.stickerExpireDate,
      inspectorId: certification.inspectorId,
      notes: certification.notes ?? '',
      correctiveAction: certification.correctiveAction ?? '',
      checklistId: certification.checklistId,
      photos: photos,
      loadTestDetails: loadTestDetails,
      loadTest: loadTest,
    )
        .then((certificationEntity) async {
      if (certificationEntity != null) {
        certification.isSynced = true;
        await isarService.addCertification(certification);
      }
    });

    isCertificationSyncying = false;
    emit(SyncCertificationLoadedState());
  }

  //!---------------------------------- Sync workorder's all certifications fun --------------------------//
  bool isAllCertificationsSyncying = false;

  Future<void> syncAllCertificationsForWoFun({
    required IsarService isarService,
    required CertificationCubit certificationCubit,
    required int woId,
  }) async {
    isAllCertificationsSyncying = true;
    emit(SyncAllCertificationsLoadingState());
    final localCertifications =
        await isarService.getAllNotSyncedCertificationsByWOId(woId);
    for (Certification certification in localCertifications) {
      await syncCertificationFun(
        certification: certification,
        certificationCubit: certificationCubit,
        isarService: isarService,
      );
    }
    isAllCertificationsSyncying = false;
    emit(SyncAllCertificationsLoadedState());
  }

  //!---------------------------------- create temp image file fun ----------------------------------------//
  File? createTempImageFileFun({
    required List<int> imageData,
    required String imageName,
  }) {
    try {
      // Create a temporary file with a unique name
      var tempDir = Directory.systemTemp;
      var tempFile = File('${tempDir.path}/$imageName.png');

      // Write the image data to the temporary file
      tempFile.writeAsBytesSync(imageData);

      // Return the renamed file
      return tempFile;
    } catch (e) {
      // Handle any exceptions that occur during file operations

      return null; // Return null or throw an error as per your requirements
    }
  }
}
