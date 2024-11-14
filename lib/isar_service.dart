import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test_workapp/collections/attached_photos/attached_photo.dart';
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
import 'package:test_workapp/collections/users/user.dart';
import 'package:test_workapp/collections/users/user_details.dart';
import 'package:test_workapp/collections/users/user_jobs.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/collections/work_orders_assigned/work_order_assigned.dart';

class IsarService {
  static final IsarService _instance = IsarService._internal();
  late final Future<Isar> db;

  factory IsarService() {
    return _instance;
  }

  IsarService._internal() {
    db = openDB();
  }

  //! Users ( add - add all - get by id  -get all - delete all)
  // Future<User?> addUser(User newUser) async {
  //   final isar = await db;
  //   final userId = isar.writeTxnSync<int>(() => isar.users.putSync(newUser));
  //   return await getUserById(userId);
  // }

  Future<void> addAllUsers(List<User> newUsers) async {
    final isar = await db;
    isar.writeTxn(() => isar.users.putAll(newUsers));
  }

  Future<User?> getUserById(int id) async {
    final isar = await db;
    return await isar.users.get(id);
  }

  Future<List<User>> getAllUsers() async {
    final isar = await db;
    return await isar.users.where().findAll();
  }

  Future<void> deleteAllUsers() async {
    final isar = await db;
    await isar.writeTxn(() => isar.users.clear());
  }

  //! Users Details ( add - add all - get by id - get by userId -get all- delete all)
  // Future<UserDetails?> addUserDetails(UserDetails newUserDetails) async {
  //   final isar = await db;
  //   final userDetailsId =
  //       isar.writeTxnSync<int>(() => isar.userDetails.putSync(newUserDetails));
  //   return await getUserDetailsById(userDetailsId);
  // }

  Future<void> addAllUsersDetails(List<UserDetails> newUsersDetails) async {
    final isar = await db;
    isar.writeTxn(() => isar.userDetails.putAll(newUsersDetails));
  }

  Future<UserDetails?> getUserDetailsById(int id) async {
    final isar = await db;
    return await isar.userDetails.get(id);
  }

  Future<UserDetails?> getUserDetailsByUserId(int userId) async {
    final isar = await db;
    return await isar.userDetails.filter().userIdEqualTo(userId).findFirst();
  }

  Future<List<UserDetails>> getAllUsersDetails() async {
    final isar = await db;
    return await isar.userDetails.where().findAll();
  }

  Future<void> deleteAllUsersDetails() async {
    final isar = await db;
    await isar.writeTxn(() => isar.userDetails.clear());
  }

  //! Users Jobs ( add - add all  - get by id -get all- delete all)
  // Future<UserJobs?> addUserJobs(UserJobs newUserJobs) async {
  //   final isar = await db;
  //   final userJobsId =
  //       isar.writeTxnSync<int>(() => isar.userJobs.putSync(newUserJobs));
  //   return await getUserJobsById(userJobsId);
  // }

  Future<void> addAllUsersJobs(List<UserJobs> newUsersJobs) async {
    final isar = await db;
    isar.writeTxn(() => isar.userJobs.putAll(newUsersJobs));
  }

  Future<UserJobs?> getUserJobsById(int id) async {
    final isar = await db;
    return await isar.userJobs.get(id);
  }

  Future<List<UserJobs>> getAllUsersJobs() async {
    final isar = await db;
    return await isar.userJobs.where().findAll();
  }

  Future<void> deleteAllUsersJobs() async {
    final isar = await db;
    await isar.writeTxn(() => isar.userJobs.clear());
  }

  //! Stickers  ( add - add all  - get by id - get by user id and sticker type -get all- delete all)
  // Future<Sticker?> addSticker(Sticker newSticker) async {
  //   final isar = await db;
  //   final stickerId =
  //       isar.writeTxnSync<int>(() => isar.stickers.putSync(newSticker));
  //   return await getStickerById(stickerId);
  // }
  Future<void> addAllStickers(List<Sticker> newStickers) async {
    final isar = await db;
    isar.writeTxn(() => isar.stickers.putAll(newStickers));
  }

  Future<Sticker?> getStickerById(int id) async {
    final isar = await db;
    return await isar.stickers.get(id);
  }

  Future<List<Sticker?>> getStickerByUserIdAndStickerType(
      int userId, int stickerType) async {
    final isar = await db;
    return await isar.stickers
        .filter()
        .assignedToEqualTo(userId)
        .and()
        .stickerTypeEqualTo(stickerType)
        .findAll();
  }

  Future<List<Sticker>> getAllStickers() async {
    final isar = await db;
    return await isar.stickers.where().findAll();
  }

  Future<void> deleteAllStickers() async {
    final isar = await db;
    await isar.writeTxn(() => isar.stickers.clear());
  }

  //! Checklists ( add - add all - get by id -get all - get all has aramco code - delete all)
  // Future<Checklist?> addChecklist(Checklist newChecklist) async {
  //   final isar = await db;
  //   final checklistId =
  //       isar.writeTxnSync<int>(() => isar.checklists.putSync(newChecklist));
  //   return await getChecklistById(checklistId);
  // }

  Future<void> addAllChecklists(List<Checklist> newChecklists) async {
    final isar = await db;
    isar.writeTxn(() => isar.checklists.putAll(newChecklists));
  }

  Future<Checklist?> getChecklistById(int id) async {
    final isar = await db;
    return await isar.checklists.get(id);
  }

  Future<List<Checklist>> getAllChecklists() async {
    final isar = await db;
    return await isar.checklists.where().findAll();
  }

  Future<List<Checklist>> getAllChecklistsHasAramcoCode() async {
    final isar = await db;
    return await isar.checklists
        .filter()
        .aramcoChecklistCodeIsNotNull()
        .findAll();
  }

  Future<void> deleteAllChecklists() async {
    final isar = await db;
    await isar.writeTxn(() => isar.checklists.clear());
  }

  //! checklists Details ( add - add all  - get by id - get all - get all by equ aramco id - get all by equ aramco id and parent id - get all by checklist id - delete all )
  // Future<ChecklistDetails?> addChecklistDetails(
  //     ChecklistDetails newChecklistDetails) async {
  //   final isar = await db;
  //   final checklistDetailsId = isar.writeTxnSync<int>(
  //       () => isar.checklistDetails.putSync(newChecklistDetails));
  //   return await getChecklistDetailsById(checklistDetailsId);
  // }

  Future<void> addAllChecklistsDetails(
      List<ChecklistDetails> newChecklistDetails) async {
    final isar = await db;
    isar.writeTxn(() => isar.checklistDetails.putAll(newChecklistDetails));
  }

  Future<ChecklistDetails?> getChecklistDetailsById(int id) async {
    final isar = await db;
    return await isar.checklistDetails.get(id);
  }

  Future<List<ChecklistDetails>> getAllChecklistsDetails() async {
    final isar = await db;
    return await isar.checklistDetails.where().findAll();
  }

  Future<List<ChecklistDetails>> getAllChecklistsDetailsCategoriesByEquAramcoId(
      int equAramcoChecklistid) async {
    final isar = await db;
    return await isar.checklistDetails
        .filter()
        .checklistIdEqualTo(equAramcoChecklistid)
        .and()
        .parentIdEqualTo(0)
        .findAll();
  }

  Future<List<ChecklistDetails>>
      getAllChecklistsDetailsCategorySubItemsByParentItemId(
          int equAramcoChecklistid, int parentItemId) async {
    final isar = await db;
    return await isar.checklistDetails
        .filter()
        .checklistIdEqualTo(equAramcoChecklistid)
        .and()
        .parentIdEqualTo(parentItemId)
        .findAll();
  }

  Future<List<ChecklistDetails>> getAllChecklistsDetailsByCheckListId(
      int checklistId) async {
    final isar = await db;
    return await isar.checklistDetails
        .filter()
        .checklistIdEqualTo(checklistId)
        .findAll();
  }

  Future<void> deleteAllChecklistsDetails() async {
    final isar = await db;
    await isar.writeTxn(() => isar.checklistDetails.clear());
  }

  //! Departments  ( add - add all  - get by id  -get all  - delete all)
  // Future<Department?> addDepartment(Department newDepartment) async {
  //   final isar = await db;
  //   final departmentId =
  //       isar.writeTxnSync<int>(() => isar.departments.putSync(newDepartment));
  //   return await getDepartmentById(departmentId);
  // }

  Future<void> addAllDepartments(List<Department> newDepartments) async {
    final isar = await db;
    isar.writeTxn(() => isar.departments.putAll(newDepartments));
  }

  Future<Department?> getDepartmentById(int id) async {
    final isar = await db;
    return await isar.departments.get(id);
  }

  Future<List<Department>> getAllDepartments() async {
    final isar = await db;
    return await isar.departments.where().findAll();
  }

  Future<void> deleteAllDepartments() async {
    final isar = await db;
    await isar.writeTxn(() => isar.departments.clear());
  }

  //! Equipments  ( add - add all  - get by id - get by eq id  -get all - get all has aramco checklist id- delete all)
  // Future<Equipment?> addEquipment(Equipment newSticker) async {
  //   final isar = await db;
  //   final equipmentId =
  //       isar.writeTxnSync<int>(() => isar.equipments.putSync(newSticker));
  //   return await getEquipmentById(equipmentId);
  // }

  Future<void> addAllEquipments(List<Equipment> newEquipments) async {
    final isar = await db;
    isar.writeTxn(() => isar.equipments.putAll(newEquipments));
  }

  Future<Equipment?> getEquipmentById(int id) async {
    final isar = await db;
    return await isar.equipments.get(id);
  }

  Future<Equipment?> getEqupimentByEqId(int eqId) async {
    final isar = await db;
    return await isar.equipments.filter().eqIdEqualTo(eqId).findFirst();
  }

  Future<List<Equipment>> getAllEquipments() async {
    final isar = await db;
    return await isar.equipments.where().findAll();
  }

  Future<List<Equipment>> getAllEquipmentsHaveAramcoChecklistId() async {
    final isar = await db;
    return await isar.equipments
        .filter()
        .aramcoChecklistIdGreaterThan(0)
        .sortByEqName()
        .findAll();
  }

  Future<void> deleteAllEquipments() async {
    final isar = await db;
    await isar.writeTxn(() => isar.equipments.clear());
  }

  //! Customers  ( add - add all  - get by id -get all - delete all)
  // Future<Customer?> addCustomer(Customer newCustomer) async {
  //   final isar = await db;
  //   final customerId =
  //       isar.writeTxnSync<int>(() => isar.customers.putSync(newCustomer));
  //   return await getCustomerById(customerId);
  // }

  Future<void> addAllCustomers(List<Customer> newCustomers) async {
    final isar = await db;
    isar.writeTxn(() => isar.customers.putAll(newCustomers));
  }

  Future<Customer?> getCustomerById(int id) async {
    final isar = await db;
    return await isar.customers.get(id);
  }

  Future<Customer?> getCustomerByCustomerId(int customerId) async {
    final isar = await db;
    return await isar.customers
        .filter()
        .customerIdEqualTo(customerId)
        .findFirst();
  }

  Future<List<Customer>> getAllCustomers() async {
    final isar = await db;
    return await isar.customers.where().findAll();
  }

  Future<void> deleteAllCustomers() async {
    final isar = await db;
    await isar.writeTxn(() => isar.customers.clear());
  }

  //! regions (add - add all - get by id - get all - delete all)
  // Future<Region?> addRegion(Region newRegion) async {
  //   final isar = await db;
  //   final regionId =
  //       isar.writeTxnSync<int>(() => isar.regions.putSync(newRegion));
  //   return await getRegionById(regionId);
  // }

  Future<void> addAllRegions(List<Region> newRegions) async {
    final isar = await db;
    isar.writeTxn(() => isar.regions.putAll(newRegions));
  }

  Future<Region?> getRegionById(int regionId) async {
    final isar = await db;
    return await isar.regions.filter().regionIdEqualTo(regionId).findFirst();
  }

  Future<List<Region>> getAllRegions() async {
    final isar = await db;
    return await isar.regions.where().findAll();
  }

  Future<void> deleteAllRegions() async {
    final isar = await db;
    await isar.writeTxn(() => isar.regions.clear());
  }

  //! cities (add -add all  - get by id - get by ID  - get all by regionId  - get all - delete all)

  // Future<City?> addCity(City newCity) async {
  //   final isar = await db;
  //   final cityId = isar.writeTxnSync<int>(() => isar.citys.putSync(newCity));
  //   return await getCityById(cityId);
  // }

  Future<void> addAllcitys(List<City> newCities) async {
    final isar = await db;
    isar.writeTxn(() => isar.citys.putAll(newCities));
  }

  Future<City?> getCityById(int id) async {
    final isar = await db;
    return await isar.citys.get(id);
  }

  Future<City?> getCityByID(int iD) async {
    final isar = await db;
    return await isar.citys.filter().iDEqualTo(iD).findFirst();
  }

  Future<List<City>> getAllCitiesByRegionId(int regionId) async {
    final isar = await db;
    return await isar.citys.filter().regionIdEqualTo(regionId).findAll();
  }

  Future<List<City>> getAllCities() async {
    final isar = await db;
    return await isar.citys.where().findAll();
  }

  Future<void> deleteAllCities() async {
    final isar = await db;
    await isar.writeTxn(() => isar.citys.clear());
  }

  //! Work order ( add -add all - get by id - get by wo id - get all - get all uploaded -
  //! get all local- get all for current user - get all uploaded for current user
  //! get all not synced and has signature - delete by id -  delete all - listenToWorkOrders )
  Future<void> addWorkOrder(WorkOrder newWorkOrder) async {
    final isar = await db;
    isar.writeTxnSync<int>(() => isar.workOrders.putSync(newWorkOrder));
  }

  Future<void> addAllWorkOrders(List<WorkOrder> newWorkOrders) async {
    final isar = await db;
    isar.writeTxn(() => isar.workOrders.putAll(newWorkOrders));
  }

  Future<WorkOrder?> getWorkOrderById(int id) async {
    final isar = await db;
    return await isar.workOrders.get(id);
  }

  Future<WorkOrder?> getWorkOrderByWoId(int woId) async {
    final isar = await db;
    return await isar.workOrders.filter().woIdEqualTo(woId).findFirst();
  }

  Future<List<WorkOrder>> getAllUploadedWorkOrders() async {
    final isar = await db;
    return await isar.workOrders.filter().isUploadedEqualTo(true).findAll();
  }

  Future<List<WorkOrder>> getAllWOsByWOAssignedList(
      List<int> workOrdersAssigned) async {
    final isar = await db;
    return await isar.workOrders
        .filter()
        .anyOf(workOrdersAssigned, (q, element) => q.woIdEqualTo(element))
        .findAll();
  }

  Future<List<WorkOrder>> getCurrentUserLocalWOs() async {
    final isar = await db;
    return await isar.workOrders.filter().isSyncedEqualTo(false).findAll();
  }

  //! All Tab  ( local created WorkOrders + Current User WorkOrders Assigned)
  Future<List<WorkOrder>> getAllWorkOrders() async {
    final isar = await db;
    // return await isar.workOrders.where().findAll();
    return await isar.workOrders.where().sortByWoIdDesc().findAll();
  }

  Future<List<WorkOrder>> getAllNotSyncedAndHasSignatureWorkOrders() async {
    final isar = await db;
    return await isar.workOrders
        .filter()
        .isSyncedEqualTo(false)
        .and()
        .customerSignIsNotNull()
        .findAll();
  }

  Future<void> deleteWorkOrderById(int id) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.workOrders.deleteSync(id));
  }

  Future<void> deleteAllWorkOrders() async {
    final isar = await db;
    await isar.writeTxn(() => isar.workOrders.clear());
  }

  Stream<List<WorkOrder>> listenToWorkOrders() async* {
    final isar = await db;
    yield* isar.workOrders.where().watch(fireImmediately: true);
  }

  //! WorkOrders Assigned (add - add all  - get by id - get by woId - search WOs -
  //! get all by WO ID- get all by user id - get all - delete all)
  // Future<WorkOrderAssigned?> addWorkOrderAssigned(
  //     WorkOrderAssigned newWorkOrderAssigned) async {
  //   final isar = await db;
  //   final workOrderAssignedId = isar.writeTxnSync<int>(
  //       () => isar.workOrderAssigneds.putSync(newWorkOrderAssigned));
  //   return await getWorkOrderAssignedById(workOrderAssignedId);
  // }

  Future<void> addAllWorkOrderAssigned(
      List<WorkOrderAssigned> newWorkOrdersAssigned) async {
    final isar = await db;
    isar.writeTxn(() => isar.workOrderAssigneds.putAll(newWorkOrdersAssigned));
  }

  Future<WorkOrderAssigned?> getWorkOrderAssignedById(int id) async {
    final isar = await db;
    return await isar.workOrderAssigneds.get(id);
  }

  Future<WorkOrderAssigned?> getWorkOrderAssignedByWoId(int woId) async {
    final isar = await db;
    return await isar.workOrderAssigneds.filter().woIdEqualTo(woId).findFirst();
  }

  Future<WorkOrder?> searchWorkOrders(int woId) async {
    final isar = await db;
    WorkOrder? wo =
        await isar.workOrders.filter().woIdEqualTo(woId).findFirst();
    WorkOrderAssigned? woAssigned = await getWorkOrderAssignedByWoId(woId);
    if (wo != null && (wo.isUploaded != null || woAssigned != null)) {
      return wo;
    } else {
      return null;
    }
  }

  Future<List<WorkOrderAssigned>> getAllWorkOrdersAssignedByWOId(
      int woId) async {
    final isar = await db;
    return await isar.workOrderAssigneds.filter().woIdEqualTo(woId).findAll();
  }

  Future<List<WorkOrderAssigned>> getAllWorkOrdersAssignedByUserId(
      int userId) async {
    final isar = await db;
    return await isar.workOrderAssigneds
        .filter()
        .userIdEqualTo(userId)
        .findAll();
  }

  Future<List<WorkOrderAssigned>> getAllWorkOrdersAssigned() async {
    final isar = await db;
    return await isar.workOrderAssigneds.where().findAll();
  }

  Future<void> deleteAllWorkOrdersAssigned() async {
    final isar = await db;
    await isar.writeTxn(() => isar.workOrderAssigneds.clear());
  }

  //! Image ( add - get by id  -get by wo id -  delete by wo id)
  Future<LocalImage?> addImage(LocalImage newLocalImage) async {
    final isar = await db;
    final imageId =
        isar.writeTxnSync<int>(() => isar.localImages.putSync(newLocalImage));
    return await getImageById(imageId);
  }

  Future<LocalImage?> getImageById(int id) async {
    final isar = await db;
    return await isar.localImages.get(id);
  }

  Future<LocalImage?> getImageByWOId(int woId) async {
    final isar = await db;
    return await isar.localImages.filter().woIdEqualTo(woId).findFirst();
  }

  Future<void> deleteImageByWOId(int woId) async {
    final isar = await db;
    isar.writeTxnSync(
        () => isar.localImages.filter().woIdEqualTo(woId).deleteAllSync());
  }

  //! New Work Orders & count  ( sequence equal zero & not synced  )

  Future<List<WorkOrder>> getNewWorkOrders() async {
    final isar = await db;
    return await isar.workOrders
        .filter()
        .customerSignIsNull()
        .and()
        .sequenceEqualTo(0)
        .sortByWoIdDesc()
        .findAll();
  }

  Future<int> getNewWorkOrdersCount() async {
    final isar = await db;
    return await isar.workOrders
        .filter()
        .customerSignIsNull()
        .and()
        .sequenceEqualTo(0)
        .sortByWoIdDesc()
        .count();
  }

  // //! Progress Work Orders & count
  Future<List<WorkOrder>> getProgressWorkOrders() async {
    final isar = await db;
    return await isar.workOrders
        .filter()
        .sequenceGreaterThan(0)
        .and()
        .isUploadedEqualTo(false)
        .sortByWoIdDesc()
        .findAll();
  }

  Future<int> getProgressWorkOrdersCount() async {
    final isar = await db;
    return await isar.workOrders
        .filter()
        .sequenceGreaterThan(0)
        .and()
        .isUploadedEqualTo(false)
        .count();
  }

  // //! Signed Work Orders & count
  Future<List<WorkOrder>> getSignedWorkOrders() async {
    final isar = await db;
    return await isar.workOrders
        .filter()
        .sequenceGreaterThan(0)
        .and()
        .customerSignIsNotNull()
        .and()
        .isUploadedEqualTo(false)
        .sortByWoIdDesc()
        .findAll();
  }

  Future<int> getSignedWorkOrdersCount() async {
    final isar = await db;
    return await isar.workOrders
        .filter()
        .sequenceGreaterThan(0)
        .and()
        .customerSignIsNotNull()
        .isUploadedEqualTo(false)
        .sortByWoIdDesc()
        .count();
  }

  //! Uploaded Work Orders & count
  Future<List<WorkOrder>> getUploadedWorkOrders() async {
    final isar = await db;
    return await isar.workOrders
        .filter()
        .sequenceGreaterThan(0)
        .and()
        .customerSignIsNotNull()
        .and()
        .isUploadedEqualTo(true)
        .sortByWoIdDesc()
        .findAll();
  }

  Future<int> getUploadedWorkOrdersCount() async {
    final isar = await db;
    return await isar.workOrders
        .filter()
        .sequenceGreaterThan(0)
        .and()
        .customerSignIsNotNull()
        .and()
        .isUploadedEqualTo(true)
        .sortByWoIdDesc()
        .count();
  }

  //! Certification ( Add - getDetails - getWorkOrderCertifications -
  //! search certification - get  by woId and equ name - get by woId and certification number -
  //! get by woId - get all not synced certifications  - get all )
  Future<Certification?> addCertification(
      Certification newCertification) async {
    final isar = await db;
    final certificationId = isar
        .writeTxnSync<int>(() => isar.certifications.putSync(newCertification));
    return await getCertifcateDetails(certificationId);
  }

  Future<Certification?> getCertifcateDetails(int id) async {
    final isar = await db;
    return await isar.certifications.get(id);
  }

  Future<List<Certification>> getCertificationsFor(WorkOrder workOrder) async {
    final isar = await db;
    return await isar.certifications
        .filter()
        .workOrder((q) => q.idEqualTo(workOrder.id))
        .findAll();
  }

  Future<List<Certification>> searchCertificationByWoId(
      int woId, String keyWord) async {
    List<Certification> searchResult = [];
    final int? isInt = int.tryParse(keyWord);
    if (isInt != null) {
      final int certificationNumber = int.parse(keyWord);
      Certification? certification =
          await getCertificationByWoIdAndCertificationNumber(
        woId,
        certificationNumber,
      );
      if (certification != null) {
        searchResult.add(certification);
      }
    } else {
      List<Certification> certifications =
          await getCertificationsByWoIdAndEquipmentName(
        woId,
        keyWord,
      );
      searchResult.addAll(certifications);
    }

    return searchResult;
  }

  Future<List<Certification>> getCertificationsByWoIdAndEquipmentName(
      int woId, String equipmentName) async {
    final isar = await db;
    return await isar.certifications
        .filter()
        .woIdEqualTo(woId)
        .and()
        .equipmentNameContains(equipmentName)
        // .equipmentNameMatches(equipmentName)
        .or()
        .equipmentNameStartsWith(equipmentName)
        .findAll();
  }

  Future<Certification?> getCertificationByWoIdAndCertificationNumber(
      int woId, int certificationNumber) async {
    final isar = await db;
    return await isar.certifications
        .filter()
        .woIdEqualTo(woId)
        .and()
        .certificationNumberEqualTo(certificationNumber)
        .findFirst();
  }

  Future<List<Certification>> getCertificationsByWoId(int woId) async {
    final isar = await db;
    return await isar.certifications.filter().woIdEqualTo(woId).findAll();
  }

  Future<List<Certification>> getAllNotSyncedCertificationsByWOId(
      int woId) async {
    final isar = await db;
    return await isar.certifications
        .filter()
        .isSyncedEqualTo(false)
        .and()
        .woIdEqualTo(woId)
        .findAll();
  }

  Future<List<Certification>> getAllCertifications() async {
    final isar = await db;
    return await isar.certifications.where().findAll();
  }

  //! Check List item ( Add - get by id - get by certification id -
  //! get by certification id and parent item id  - delete all by certification id)
  Future<CheckListItem?> addCheckListItem(
      CheckListItem newCheckListItem) async {
    final isar = await db;
    final checkListItemId = isar
        .writeTxnSync<int>(() => isar.checkListItems.putSync(newCheckListItem));
    return await getCheckListItemDetails(checkListItemId);
  }

  Future<CheckListItem?> getCheckListItemDetails(int id) async {
    final isar = await db;
    return await isar.checkListItems.get(id);
  }

  Future<List<CheckListItem>> getCheckListItemsByCertificationId(
      int certificationId) async {
    final isar = await db;
    return await isar.checkListItems
        .filter()
        .certificationIdEqualTo(certificationId)
        .findAll();
  }

  Future<List<CheckListItem>> getCheckListItemsByCertificationIdAndParentItemId(
      int certificationId, int parentItemId) async {
    final isar = await db;
    return await isar.checkListItems
        .filter()
        .certificationIdEqualTo(certificationId)
        .and()
        .parentIdEqualTo(parentItemId)
        .findAll();
  }

  Future<void> deleteAllChecklistsDetailsByCertificationId(
      int certificationId) async {
    final isar = await db;
    await isar.writeTxn(() => isar.checkListItems
        .filter()
        .certificationIdEqualTo(certificationId)
        .deleteAll());
  }

  //! Load Test Check List item ( Add - get by id - get by certification id -
  //!  get by certification id and parent item id - delete all by certification id )
  Future<LoadTestCheckListItem?> addLoadTestCheckListItem(
      LoadTestCheckListItem newLoadTestCheckListItem) async {
    final isar = await db;
    final loadTestCheckListItemId = isar.writeTxnSync<int>(
        () => isar.loadTestCheckListItems.putSync(newLoadTestCheckListItem));
    return await getLoadTestCheckListItemDetails(loadTestCheckListItemId);
  }

  Future<LoadTestCheckListItem?> getLoadTestCheckListItemDetails(int id) async {
    final isar = await db;
    return await isar.loadTestCheckListItems.get(id);
  }

  Future<List<LoadTestCheckListItem>>
      getLoadTestCheckListItemsByCertificationId(int certificationId) async {
    final isar = await db;
    return await isar.loadTestCheckListItems
        .filter()
        .certificationIdEqualTo(certificationId)
        .findAll();
  }

  Future<List<LoadTestCheckListItem>>
      getLoadTestCheckListItemsByCertificationIdAndParentItemId(
          int certificationId, int parentItemId) async {
    final isar = await db;
    return await isar.loadTestCheckListItems
        .filter()
        .certificationIdEqualTo(certificationId)
        .and()
        .parentIdEqualTo(parentItemId)
        .findAll();
  }

  Future<void> deleteAllLoadTestChecklistsDetailsByCertificationId(
      int certificationId) async {
    final isar = await db;
    await isar.writeTxn(() => isar.loadTestCheckListItems
        .filter()
        .certificationIdEqualTo(certificationId)
        .deleteAll());
  }

  //! certification attached photos (add - get by id  -
  //! get by certification id -> List<List<int>>
  //!  get by certification id -> List<AttachedPhoto>
  //!  - delete by id )
  Future<AttachedPhoto?> addAttachedPhoto(
      List<int> imageBytes, int certificationId) async {
    final image = AttachedPhoto(
      attachedPhotoBytes: imageBytes,
      certificationId: certificationId,
    );

    final isar = await db;

    final imageId =
        isar.writeTxnSync<int>(() => isar.attachedPhotos.putSync(image));
    return await getAttachedPhotoDetails(imageId);
  }

  Future<AttachedPhoto?> getAttachedPhotoDetails(int id) async {
    final isar = await db;
    return await isar.attachedPhotos.get(id);
  }

  Future<List<List<int>>> getAllAttachedPhotosByCertificationId(
      int certificationId) async {
    final isar = await db;
    final attachedPhotos = await isar.attachedPhotos
        .filter()
        .certificationIdEqualTo(certificationId)
        .findAll();
    return attachedPhotos.map((photo) => photo.attachedPhotoBytes).toList();
  }

  Future<List<AttachedPhoto>> getAllAttachedPhotosListByCertificationId(
      int certificationId) async {
    final isar = await db;
    return await isar.attachedPhotos
        .filter()
        .certificationIdEqualTo(certificationId)
        .findAll();
  }

  Future<void> deleteAttachedPhoto(int attachedPhotoId) async {
    final isar = await db;

    isar.writeTxnSync(() => isar.attachedPhotos.deleteSync(attachedPhotoId));
  }

  //! clean db
  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  //! open db
  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          UserSchema,
          UserDetailsSchema,
          UserJobsSchema,
          StickerSchema,
          ChecklistSchema,
          ChecklistDetailsSchema,
          DepartmentSchema,
          EquipmentSchema,
          CustomerSchema,
          RegionSchema,
          CitySchema,
          WorkOrderSchema,
          WorkOrderAssignedSchema,
          LocalImageSchema,
          CertificationSchema,
          CheckListItemSchema,
          LoadTestCheckListItemSchema,
          AttachedPhotoSchema,
        ],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
