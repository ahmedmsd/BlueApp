import 'package:flutter/material.dart';
import 'package:test_workapp/collections/certifications/certification.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/features/authentication/presentation/screens/login_screen.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/attached_photo_zoom_route_arguments.dart';
import 'package:test_workapp/features/certification/presentation/screens/attached_photo_zoom/attached_photo_zoom_screen.dart';
import 'package:test_workapp/features/certification/presentation/screens/add_edit_certification/attached_photos_screen.dart';
import 'package:test_workapp/features/certification/presentation/screens/load_test/load_test_check_list_screen.dart';
import 'package:test_workapp/features/certification/presentation/screens/load_test/load_test_details_screen.dart';
import 'package:test_workapp/features/certification/presentation/screens/load_test/load_test_view_screen.dart';
import 'package:test_workapp/features/certification/presentation/screens/view_certification/certification_details_screen.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/features/certification/presentation/screens/add_edit_certification/check_list_screen.dart';
import 'package:test_workapp/features/certification/presentation/screens/add_edit_certification/information_screen.dart';
import 'package:test_workapp/features/certification/presentation/screens/add_edit_certification/inspection_details_screen.dart';
import 'package:test_workapp/features/certification/presentation/screens/search_certification/search_certification_screen.dart';
import 'package:test_workapp/features/layout/presentation/screens/layout_screen.dart';
import 'package:test_workapp/features/splash/presentation/screens/splash_screen.dart';
import 'package:test_workapp/features/work_orders/presentation/screens/add_work_order_screen.dart';
import 'package:test_workapp/features/work_orders/presentation/screens/edit_work_order_screen.dart';
import 'package:test_workapp/features/work_orders/presentation/screens/search_work_order_screen.dart';
import 'package:test_workapp/features/work_orders/presentation/screens/view_work_order_signature_screen.dart';
import 'package:test_workapp/features/work_orders/presentation/screens/work_order_details_route_arguments.dart';
import 'package:test_workapp/features/work_orders/presentation/screens/work_order_details_screen.dart';
import 'package:test_workapp/features/rejected/presentation/screens/rejected_equipment_screen.dart';

import 'app_routes.dart';

class RouteGenerator {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.layoutScreen:
        return MaterialPageRoute(
          builder: (context) => const LayoutScreen(),
        );
      case Routes.addWorkOrderScreen:
        return MaterialPageRoute(
          builder: (context) => const AddWorkOrderScreen(),
        );
      case Routes.editWorkOrderScreen:
        return MaterialPageRoute(
          builder: (context) => EditWorkOrderScreen(
            workOrder: args as WorkOrder,
          ),
        );
      case Routes.workOrderDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => WorkOrderDetailsScreen(
            // workOrder: args as WorkOrder,
            workOrderDetailsRouteArguments:
                args as WorkOrderDetailsRouteArguments,
          ),
        );
      case Routes.informationScreen:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: args),
          builder: (context) {
            return InformationScreen(
              certificationRouteArguments: args as CertificationRouteArguments,
            );
          },
        );
      case Routes.checkListScreen:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: args),
          builder: (context) => CheckListScreen(
            certificationRouteArguments: args as CertificationRouteArguments,
            // certificationCubit: args as CertificationCubit,
            // certification: args as Certification,
          ),
        );
      case Routes.inspectionDetailsScreen:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: args),
          builder: (context) => InspectionDetailsScreen(
            certificationRouteArguments: args as CertificationRouteArguments,
            // certificationCubit: args as CertificationCubit,
          ),
        );
      case Routes.attachedPhotosScreen:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: args),
          builder: (context) => AttachedPhotosScreen(
            certificationRouteArguments: args as CertificationRouteArguments,
            // certification: args as Certification,
          ),
        );

      case Routes.certificationDetailsScreen:
        return MaterialPageRoute(
          settings: RouteSettings(arguments: args),
          builder: (context) => CertificationDetailsScreen(
            certification: args as Certification,
          ),
        );

      case Routes.searchWorkOrderScreen:
        return MaterialPageRoute(
          builder: (context) => const SearchWorkOrderScreen(),
        );

      case Routes.searchCertificationScreen:
        return MaterialPageRoute(
          builder: (context) => SearchCertificationScreen(
            workOrder: args as WorkOrder,
          ),
        );

      case Routes.viewWorkOrderSignatureScreen:
        return MaterialPageRoute(
          builder: (context) => ViewWorkOrderSignatureScreen(
            workOrder: args as WorkOrder,
          ),
        );

      case Routes.attachedPhotoZoomScreen:
        return MaterialPageRoute(
          builder: (context) => AttachedPhotoZoomScreen(
            attachedPhotoZoomRouteArguments:
                args as AttachedPhotoZoomRouteArguments,
          ),
        );

      case Routes.loadTestCheckListScreen:
        return MaterialPageRoute(
          builder: (context) => LoadTestCheckListScreen(
            certificationRouteArguments: args as CertificationRouteArguments,
          ),
        );

      case Routes.loadTestDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => LoadTestDetailsScreen(
            certificationRouteArguments: args as CertificationRouteArguments,
          ),
        );

      case Routes.loadTestViewScreen:
        return MaterialPageRoute(
          builder: (context) => LoadTestViewScreen(
            certification: args as Certification,
          ),
        );

      case Routes.rejectedEquipmentViewScreen:
        return MaterialPageRoute(
          builder: (context) => RejectedEquipmentViewScreen(),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text(
            'un defined route!!',
          ),
        ),
      ),
    );
  }
}
