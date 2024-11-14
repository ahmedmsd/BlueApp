import 'package:test_workapp/collections/work_orders/work_order.dart';

class WorkOrderDetailsRouteArguments {
  WorkOrder workOrder;
  bool isSearch;

  WorkOrderDetailsRouteArguments({
    required this.workOrder,
    required this.isSearch,
  });
}
