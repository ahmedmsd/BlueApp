import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';

class CertificationRouteArguments {
  WorkOrder? workOrder;
  CertificationCubit? certificationCubit;
  Certification? certification;

  CertificationRouteArguments({
    this.workOrder,
    this.certificationCubit,
    this.certification,
  });
}
