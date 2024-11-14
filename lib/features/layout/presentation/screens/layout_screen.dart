import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/app_assets.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/widgets/app_svg_icon.dart';
import 'package:test_workapp/core/widgets/show_floating.dart';
import 'package:test_workapp/features/checklists/presentation/cubit/checklists_cubit.dart';
import 'package:test_workapp/features/cities/presentation/cubit/cities_cubit.dart';
import 'package:test_workapp/features/rejected/presentation/cubit/rejected_cubit.dart';
import 'package:test_workapp/features/customers/presentation/cubit/customers_cubit.dart';
import 'package:test_workapp/features/departments/presentation/cubit/departments_cubit.dart';
import 'package:test_workapp/features/equipments/presentation/cubit/equipments_cubit.dart';
import 'package:test_workapp/features/regions/presentation/cubit/regions_cubit.dart';
import 'package:test_workapp/features/sticker/presentation/cubit/sticker_cubit.dart';
import 'package:test_workapp/features/sync/presentation/cubit/sync_cubit.dart';
import 'package:test_workapp/features/users/presentation/cubit/users_cubit.dart';
import 'package:test_workapp/features/work_orders/presentation/cubit/work_orders_cubit.dart';
import 'package:test_workapp/features/work_orders/presentation/screens/home_screen.dart';
import 'package:test_workapp/features/layout/presentation/widgets/appbar_layout.dart';
import 'package:test_workapp/features/settings/presentation/screens/settings_screen.dart';
import 'package:test_workapp/isar_service.dart';
import 'package:test_workapp/features/rejected/presentation/cubit/rejected_cubit.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final isarService = IsarService();
  int _selectedIndex = 0;

  List<Widget> widgetOptions = <Widget>[
    const HomeScreen(),
    const SizedBox.shrink(),
    const SettingsScreen()
  ];

  void _onItemTapped(int index) {
    setState(
      () {
        if (index == 1) {
          AppNavigator.navigateNamedTo(context, Routes.addWorkOrderScreen);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => const AddWorkOrderScreen(),
          //   ),
          // );
        } else {
          _selectedIndex = index;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UsersCubit, UsersState>(
          listener: (context, state) {
            if (state is GetUsersErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            } else if (state is GetUsersDetailsErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            } else if (state is GetUsersJobsErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            }
          },
        ),
        BlocListener<StickerCubit, StickerState>(
          listener: (context, state) {
            if (state is GetStickersErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            }
          },
        ),
        BlocListener<ChecklistsCubit, ChecklistsState>(
          listener: (context, state) {
            if (state is GetChecklistsErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            } else if (state is GetChecklistsDetailsErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            }
          },
        ),
        BlocListener<DepartmentsCubit, DepartmentsState>(
          listener: (context, state) {
            if (state is GetDepartmentsErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            }
          },
        ),
        BlocListener<EquipmentsCubit, EquipmentsState>(
          listener: (context, state) {
            if (state is GetEquipmentsErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            }
          },
        ),
        BlocListener<CustomersCubit, CustomersState>(
          listener: (context, state) {
            if (state is GetCustomersErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            }
          },
        ),
        BlocListener<RegionsCubit, RegionsState>(
          listener: (context, state) {
            if (state is GetRegionsErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            }
          },
        ),
        BlocListener<CitiesCubit, CitiesState>(
          listener: (context, state) {
            if (state is GetCitiesErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            }
          },
        ),
        BlocListener<RejectedCubit, RejectedState>(
          listener: (context, state) {
            if (state is GetRejectedErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            }
          },
        ),
        BlocListener<WorkOrdersCubit, WorkOrdersState>(
          listener: (context, state) {
            if (state is GetWorkOrdersErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            } else if (state is GetWorkOrdersAssignedErrorState) {
              ShowFloating.toast(message: state.errorMessage);
            }
          },
        ),
        BlocListener<SyncCubit, SyncState>(
          listener: (context, state) async {
            if (state is SyncAllDataErrorState) {
              ShowFloating.toast(message: state.errorMessage);
              context.read<SyncCubit>().pauseSyncAllDataAndShowDialog(
                    context: context,
                    isarService: isarService,
                    usersCubit: context.read<UsersCubit>(),
                    stickerCubit: context.read<StickerCubit>(),
                    checklistsCubit: context.read<ChecklistsCubit>(),
                    departmentsCubit: context.read<DepartmentsCubit>(),
                    equipmentsCubit: context.read<EquipmentsCubit>(),
                    customersCubit: context.read<CustomersCubit>(),
                    regionsCubit: context.read<RegionsCubit>(),
                    citiesCubit: context.read<CitiesCubit>(),
                    rejectedCubit: context.read<RejectedCubit>(),
                    workOrdersCubit: context.read<WorkOrdersCubit>(),
                    isInternal: true,
                    errorMessage: state.errorMessage,
                  );
            } else if (state is SyncAllDataLoadedState) {
              await Future.delayed(const Duration(seconds: 1)).then((value) {
                AppNavigator.navigateNamedReplace(
                  context,
                  Routes.layoutScreen,
                );
              });
            }
          },
        ),
      ],
      child: BlocBuilder<SyncCubit, SyncState>(
        builder: (context, state) {
          final syncCubit = context.read<SyncCubit>();
          return Scaffold(
            backgroundColor: AppColors.colorBackground2,
            appBar: AppbarLayout(),
            body: syncCubit.isAllDataSyncying
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : Center(
                    child: widgetOptions.elementAt(_selectedIndex),
                  ),
            bottomNavigationBar: syncCubit.isAllDataSyncying
                ? null
                : BottomNavigationBar(
                    unselectedFontSize: 12.sp,
                    selectedFontSize: 14.sp,
                    selectedLabelStyle:
                        const TextStyle(fontWeight: FontWeight.w700),
                    elevation: 5,
                    items: const <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        icon: AppSvgIcon(
                          iconPath: AppIcons.homeIcon,
                          iconSize: 30,
                        ),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: AppSvgIcon(
                          iconPath: AppIcons.addIcon,
                          iconSize: 30,
                        ),
                        label: 'Work Order',
                      ),
                      BottomNavigationBarItem(
                        icon: AppSvgIcon(
                          iconPath: AppIcons.settingsIcon,
                          iconSize: 30,
                        ),
                        label: 'Settings',
                      ),
                    ],
                    currentIndex: _selectedIndex,
                    onTap: _onItemTapped,
                  ),
          );
        },
      ),
    );
  }
}
