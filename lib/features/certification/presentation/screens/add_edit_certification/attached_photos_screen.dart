import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_workapp/collections/attached_photos/attached_photo.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/features/certification/presentation/cubit/certification_cubit.dart';
import 'package:test_workapp/features/certification/presentation/screens/args/certification_route_arguments.dart';
import 'package:test_workapp/features/certification/presentation/widgets/attach_image_widgets/hold_image_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/attach_image_widgets/pick_image_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/attach_image_widgets/show_attached_images_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/certification_bottom_nav_bar_widget.dart';
import 'package:test_workapp/features/certification/presentation/widgets/start_certification_app_bar_widgets/start_certification_app_bar.dart';
import 'package:test_workapp/isar_service.dart';

class AttachedPhotosScreen extends StatefulWidget {
  const AttachedPhotosScreen({
    super.key,
    required this.certificationRouteArguments,
  });
  final CertificationRouteArguments certificationRouteArguments;

  @override
  State<AttachedPhotosScreen> createState() => _AttachedPhotosScreenState();
}

class _AttachedPhotosScreenState extends State<AttachedPhotosScreen> {
  bool isPaused = false;
  final isarService = IsarService();
  Future<List<AttachedPhoto>> _attachedPhotosData = Future.value([]);
  @override
  void initState() {
    if (widget.certificationRouteArguments.certification != null) {
      _attachedPhotosData =
          isarService.getAllAttachedPhotosListByCertificationId(
              widget.certificationRouteArguments.certification!.id);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CertificationCubit, CertificationState>(
      // buildWhen: (previous, current) {
      //   return current is CreateLocalCertificationLoadingState ||
      //       current is UpdateLocalCertificationLoadingState;
      // },
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            return isPaused;
          },
          child: Scaffold(
            backgroundColor: Colors.grey.shade200,
            appBar: AppbarStartCertifications(
              certificationRouteArguments: widget.certificationRouteArguments,
            ),
            body: state is CreateLocalCertificationLoadingState ||
                    state is UpdateLocalCertificationLoadingState
                ? const Center(
                    child: CircularProgressIndicator.adaptive(),
                  )
                : Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: SingleChildScrollView(
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.start,
                        children: [
                          PickImageWidget(
                            certificationCubit: widget
                                .certificationRouteArguments
                                .certificationCubit!,
                          ),
                          Wrap(
                            children: List.generate(
                              widget
                                  .certificationRouteArguments
                                  .certificationCubit!
                                  .attachedPhotosList
                                  .length,
                              (index) => HoldImageWidget(
                                index: index,
                                file: widget
                                    .certificationRouteArguments
                                    .certificationCubit!
                                    .attachedPhotosList[index],
                                onTap: () {
                                  widget.certificationRouteArguments
                                      .certificationCubit!
                                      .removeAttachedPhotoByIndexFun(index);
                                },
                              ),
                            ),
                          ),
                          if (widget
                                  .certificationRouteArguments.certification !=
                              null)
                            FutureBuilder<List<AttachedPhoto>>(
                              future: _attachedPhotosData,
                              builder: (context, snapshot) {
                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return const Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else if (!snapshot.hasData) {
                                  return const SizedBox();
                                } else if (snapshot.hasData) {
                                  if (snapshot.data!.isEmpty) {
                                    return const SizedBox();
                                  } else {
                                    return Wrap(
                                      children: List.generate(
                                        snapshot.data!.length,
                                        (index) => (widget
                                                .certificationRouteArguments
                                                .certificationCubit!
                                                .tempDeletedAttachedPhotos
                                                .contains(
                                                    snapshot.data![index]))
                                            ? const SizedBox()
                                            : ShowAttachedImagesWidget(
                                                index: index + 1000,
                                                imageBytes: snapshot
                                                    .data![index]
                                                    .attachedPhotoBytes,
                                                onTap: () {
                                                  if (!widget
                                                      .certificationRouteArguments
                                                      .certificationCubit!
                                                      .tempDeletedAttachedPhotos
                                                      .contains(snapshot
                                                          .data![index])) {
                                                    widget
                                                        .certificationRouteArguments
                                                        .certificationCubit!
                                                        .tempDeletedAttachedPhotos
                                                        .add(snapshot
                                                            .data![index]);
                                                  }

                                                  // isarService.deleteAttachedPhoto(
                                                  //     snapshot.data![index].id);
                                                  setState(() {});
                                                },
                                              ),
                                      ),
                                    );
                                  }
                                } else {
                                  return const SizedBox();
                                }
                              },
                            ),
                        ],
                      ),
                    ),
                  ),
            bottomNavigationBar: state
                        is CreateLocalCertificationLoadingState ||
                    state is UpdateLocalCertificationLoadingState
                ? const SizedBox()
                : CertificationBottomNavBar(
                    certificationRouteArguments:
                        widget.certificationRouteArguments,
                    // isDisabled:
                    //     (widget.certificationRouteArguments.certification !=
                    //                 null &&
                    //             widget.certificationRouteArguments.certification!
                    //                     .attachedPhotos.length ==
                    //                 widget
                    //                     .certificationRouteArguments
                    //                     .certificationCubit!
                    //                     .tempDeletedAttachedPhotos
                    //                     .length &&
                    //             widget
                    //                 .certificationRouteArguments
                    //                 .certificationCubit!
                    //                 .attachedPhotosList
                    //                 .isEmpty)
                    //         ? true
                    //         : (widget.certificationRouteArguments.certification ==
                    //                     null &&
                    //                 widget
                    //                     .certificationRouteArguments
                    //                     .certificationCubit!
                    //                     .attachedPhotosList
                    //                     .isEmpty)
                    //             ? true
                    //             : false,
                    onNextPressed: () {
                      if (widget.certificationRouteArguments.certification !=
                          null) {
                        widget.certificationRouteArguments.certificationCubit!
                            .updateCertFun(
                          isarService: isarService,
                          oldCertification:
                              widget.certificationRouteArguments.certification!,
                        )
                            .then((_) {
                          widget.certificationRouteArguments.certificationCubit!
                              .resetCertificationCubitFun();
                          AppNavigator.navigateNamedFinish(
                            context,
                            Routes.layoutScreen,
                          );
                        });
                      } else {
                        widget.certificationRouteArguments.certificationCubit!
                            .createCertFun(isarService: isarService)
                            .then((_) {
                          widget.certificationRouteArguments.certificationCubit!
                              .resetCertificationCubitFun();
                          AppNavigator.navigateNamedFinish(
                            context,
                            Routes.layoutScreen,
                          );
                        });
                      }
                    },
                    onPrevPressed: () {
                      widget.certificationRouteArguments.certificationCubit!
                          .resetTempDeletedAttachedPhotosList();
                      widget.certificationRouteArguments.certificationCubit!
                          .prevStepFun();
                      // Navigator.of(context).pop();
                      AppNavigator.navigateNamedReplace(
                        context,
                        Routes.inspectionDetailsScreen,
                        arguments: widget.certificationRouteArguments,
                      );
                    },
                  ),
          ),
        );
      },
    );
  }
}
