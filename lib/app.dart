import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/config/themes/app_theme.dart';
import 'package:test_workapp/features/authentication/presentation/cubit/authentication_cubit.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/app_injector.dart' as di;
import 'package:test_workapp/features/checklists/presentation/cubit/checklists_cubit.dart';
import 'package:test_workapp/features/cities/presentation/cubit/cities_cubit.dart';
import 'package:test_workapp/features/customers/presentation/cubit/customers_cubit.dart';
import 'package:test_workapp/features/departments/presentation/cubit/departments_cubit.dart';
import 'package:test_workapp/features/equipments/presentation/cubit/equipments_cubit.dart';
import 'package:test_workapp/features/regions/presentation/cubit/regions_cubit.dart';
import 'package:test_workapp/features/sticker/presentation/cubit/sticker_cubit.dart';
import 'package:test_workapp/features/sync/presentation/cubit/sync_cubit.dart';
import 'package:test_workapp/features/users/presentation/cubit/users_cubit.dart';
import 'package:test_workapp/features/work_orders/presentation/cubit/work_orders_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarDividerColor: Colors.black,
      ),
    );

    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationCubit>(
          create: (context) => di.sl<AuthenticationCubit>(),
        ),
        BlocProvider<SyncCubit>(
          create: (context) => di.sl<SyncCubit>(),
        ),
        BlocProvider<UsersCubit>(
          create: (context) => di.sl<UsersCubit>(),
        ),
        BlocProvider<StickerCubit>(
          create: (context) => di.sl<StickerCubit>(),
        ),
        BlocProvider<ChecklistsCubit>(
          create: (context) => di.sl<ChecklistsCubit>(),
        ),
        BlocProvider<DepartmentsCubit>(
          create: (context) => di.sl<DepartmentsCubit>(),
        ),
        BlocProvider<EquipmentsCubit>(
          create: (context) => di.sl<EquipmentsCubit>(),
        ),
        BlocProvider<CustomersCubit>(
          create: (context) => di.sl<CustomersCubit>(),
        ),
        BlocProvider<RegionsCubit>(
          create: (context) => di.sl<RegionsCubit>(),
        ),
        BlocProvider<CitiesCubit>(
          create: (context) => di.sl<CitiesCubit>(),
        ),
        BlocProvider<WorkOrdersCubit>(
          create: (context) => di.sl<WorkOrdersCubit>(),
        ),
        BlocProvider<CertificationCubit>(
          create: (context) => di.sl<CertificationCubit>(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            debugShowCheckedModeBanner: false,
            theme: appTheme(context),
            onGenerateRoute: RouteGenerator.onGenerateRoute,
          );
        },
      ),
    );
  }
}
