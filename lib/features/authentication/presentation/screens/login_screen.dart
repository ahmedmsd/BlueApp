import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/app_assets.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/core/utils/constants/app_constants.dart';
import 'package:test_workapp/core/widgets/custom_button.dart';
import 'package:test_workapp/core/widgets/show_floating.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/features/authentication/presentation/cubit/authentication_cubit.dart';
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
import 'package:test_workapp/helpers/shared_preferences_helper.dart';
import 'package:test_workapp/isar_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final isarService = IsarService();
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground2,
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 0.05.sh,
                  ),
                  // const AppSvgIcon(
                  //   iconPath: AppImages.appLogo,
                  //   iconSize: 50,
                  // ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10.w),
                    child: Center(
                      child: Image.asset(AppImages.appSplashImage2),
                      // child: AppSvgIcon(
                      //   iconPath: AppImages.appSplashImage,
                      // ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Text(
                    'Login to your account',
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: AppColors.colorText1,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      BlocBuilder<SyncCubit, SyncState>(
                        builder: (context, state) {
                          final syncCubit = context.read<SyncCubit>();
                          return InputFieldMake(
                            enabled: syncCubit.isAllDataSyncying ? false : true,
                            inputController: _usernameController,
                            validatorInput: (input) {
                              if (input!.trim().isEmpty) {
                                return "required";
                              }

                              return null;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Password',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      BlocBuilder<SyncCubit, SyncState>(
                        builder: (context, state) {
                          final syncCubit = context.read<SyncCubit>();
                          return InputFieldMake(
                            enabled: syncCubit.isAllDataSyncying ? false : true,
                            inputController: _passwordController,
                            hideText: true,
                            validatorInput: (input) {
                              if (input!.trim().isEmpty) {
                                return "required";
                              }

                              return null;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  MultiBlocListener(
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
                      BlocListener<WorkOrdersCubit, WorkOrdersState>(
                        listener: (context, state) {
                          if (state is GetWorkOrdersErrorState) {
                            ShowFloating.toast(message: state.errorMessage);
                          } else if (state is GetWorkOrdersAssignedErrorState) {
                            ShowFloating.toast(message: state.errorMessage);
                          }
                        },
                      ),
                      BlocListener<AuthenticationCubit, AuthenticationState>(
                        listener: (context, state) async {
                          if (state is SigninErrorState) {
                            ShowFloating.toast(message: state.errorMessage);
                          } else if (state is SigninLoadedState) {
                            await SharedPreferencesHelper.saveData(
                              key: AppConstants.userId,
                              value: state.signinEntity.userId,
                            );
                            await SharedPreferencesHelper.saveData(
                              key: AppConstants.username,
                              value: state.signinEntity.username,
                            );
                            await SharedPreferencesHelper.saveData(
                              key: AppConstants.email,
                              value: state.signinEntity.email,
                            );
                            await SharedPreferencesHelper.saveData(
                              key: AppConstants.empCode,
                              value: state.signinEntity.empCode,
                            );

                            await SharedPreferencesHelper.saveData(
                              key: AppConstants.accessToken,
                              value: state.signinEntity.accessToken,
                            ).then((accessToken) async {
                              if (accessToken != null) {
                                await context.read<SyncCubit>().syncAllDataFun(
                                      isarService: isarService,
                                      usersCubit: context.read<UsersCubit>(),
                                      stickerCubit:
                                          context.read<StickerCubit>(),
                                      checklistsCubit:
                                          context.read<ChecklistsCubit>(),
                                      departmentsCubit:
                                          context.read<DepartmentsCubit>(),
                                      equipmentsCubit:
                                          context.read<EquipmentsCubit>(),
                                      customersCubit:
                                          context.read<CustomersCubit>(),
                                      workOrdersCubit:
                                          context.read<WorkOrdersCubit>(),
                                      regionsCubit:
                                          context.read<RegionsCubit>(),
                                      citiesCubit: context.read<CitiesCubit>(),
                                      isInternal: false,
                                    );
                              }
                            });
                          }
                        },
                      ),
                      BlocListener<SyncCubit, SyncState>(
                        listener: (context, state) {
                          if (state is SyncAllDataErrorState) {
                            ShowFloating.toast(message: state.errorMessage);
                            context
                                .read<SyncCubit>()
                                .pauseSyncAllDataAndShowDialog(
                                  context: context,
                                  isarService: isarService,
                                  usersCubit: context.read<UsersCubit>(),
                                  stickerCubit: context.read<StickerCubit>(),
                                  checklistsCubit:
                                      context.read<ChecklistsCubit>(),
                                  departmentsCubit:
                                      context.read<DepartmentsCubit>(),
                                  equipmentsCubit:
                                      context.read<EquipmentsCubit>(),
                                  customersCubit:
                                      context.read<CustomersCubit>(),
                                  regionsCubit: context.read<RegionsCubit>(),
                                  citiesCubit: context.read<CitiesCubit>(),
                                  workOrdersCubit:
                                      context.read<WorkOrdersCubit>(),
                                  isInternal: false,
                                  errorMessage: state.errorMessage,
                                );
                          } else if (state is SyncAllDataLoadedState) {
                            AppNavigator.navigateNamedFinish(
                              context,
                              Routes.layoutScreen,
                            );
                          }
                        },
                      ),
                    ],
                    child: BlocBuilder<SyncCubit, SyncState>(
                      builder: (context, state) {
                        final syncCubit = context.read<SyncCubit>();
                        final authCubit = context.read<AuthenticationCubit>();
                        return CustomButton(
                          isDisabled: syncCubit.isAllDataSyncying,
                          title: 'Login',
                          radius: 10,
                          onPressed: () {
                            authCubit.hashPasswordFun(
                              password: _passwordController.text,
                            );
                            if (_formKey.currentState!.validate()) {
                              authCubit.signinFun(
                                username: _usernameController.text,
                                password: _passwordController.text,
                              );
                            }
                          },
                        );
                      },
                    ),
                  ),
                  BlocBuilder<SyncCubit, SyncState>(
                    builder: (context, state) {
                      return context.read<SyncCubit>().isAllDataSyncying
                          ? SizedBox(
                              height: 0.20.sh,
                              child: const Center(
                                child: CircularProgressIndicator.adaptive(),
                              ),
                            )
                          : SizedBox(
                              height: 0.20.sh,
                            );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
