import 'package:flutter/material.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/core/utils/app_colors.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/home_widgets/work_order_card_widget.dart';
import 'package:test_workapp/features/work_orders/presentation/widgets/home_widgets/tab_bar_widget.dart';
import 'package:test_workapp/isar_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final service = IsarService();

  // Future<List<WorkOrder>> _allWorkOrdersData = Future.value([]);
  // Future<List<WorkOrder>> _newWorkOrdersData = Future.value([]);
  // Future<List<WorkOrder>> _progressWorkOrdersData = Future.value([]);
  // Future<List<WorkOrder>> _signedWorkOrdersData = Future.value([]);
  // Future<List<WorkOrder>> _uploadedWorkOrdersData = Future.value([]);
  // @override
  // void initState() {
  //   getData().then((value) {
  //     setState(() {});
  //   });
  //   super.initState();
  // }

  // Future<void> getData() async {
  //   // _allWorkOrdersData = service.getAllWorkOrders();
  //   _newWorkOrdersData = service.getNewWorkOrders();
  //   _progressWorkOrdersData = service.getProgressWorkOrders();
  //   _signedWorkOrdersData = service.getSignedWorkOrders();
  //   _uploadedWorkOrdersData = service.getUploadedWorkOrders();
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: AppColors.colorBackground2,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // give the tab bar a height [can change hheight to preferred height]
              const TabBarWidget(),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    FutureBuilder<List<WorkOrder>>(
                      // future: _allWorkOrdersData,
                      future: service.getAllWorkOrders(),

                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (!snapshot.hasData) {
                          return const Center(
                            child: Text(" There is no work orders"),
                          );
                        } else if (snapshot.hasData) {
                          // var reversedList = snapshot.data!.reversed.toList();
                          return ListView.builder(
                            itemBuilder: (context, index) =>
                                WorkOrderCardWidget(
                              workOrder: snapshot.data![index],
                              // workOrder: reversedList[index],
                              isSearch: false,
                            ),
                            itemCount: snapshot.data!.length,
                            // itemCount: reversedList.length,
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                    FutureBuilder<List<WorkOrder>>(
                      // future: _newWorkOrdersData,
                      future: service.getNewWorkOrders(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (!snapshot.hasData) {
                          return const Center(
                            child: Text(" There is no work orders"),
                          );
                        } else if (snapshot.hasData) {
                          // var reversedList = snapshot.data!.reversed.toList();
                          return ListView.builder(
                            itemBuilder: (context, index) =>
                                WorkOrderCardWidget(
                              workOrder: snapshot.data![index],
                              // workOrder: reversedList[index],
                              isSearch: false,
                            ),
                            itemCount: snapshot.data!.length,
                            // itemCount: reversedList.length,
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                    FutureBuilder<List<WorkOrder>>(
                      // future: _progressWorkOrdersData,
                      future: service.getProgressWorkOrders(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (!snapshot.hasData) {
                          return const Center(
                            child: Text(" There is no work orders"),
                          );
                        } else if (snapshot.hasData) {
                          // var reversedList = snapshot.data!.reversed.toList();
                          return ListView.builder(
                            itemBuilder: (context, index) =>
                                WorkOrderCardWidget(
                              workOrder: snapshot.data![index],
                              // workOrder: reversedList[index],
                              isSearch: false,
                            ),
                            itemCount: snapshot.data!.length,
                            // itemCount: reversedList.length,
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                    FutureBuilder<List<WorkOrder>>(
                      // future: _signedWorkOrdersData,
                      future: service.getSignedWorkOrders(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (!snapshot.hasData) {
                          return const Center(
                            child: Text(" There is no work orders"),
                          );
                        } else if (snapshot.hasData) {
                          // var reversedList = snapshot.data!.reversed.toList();
                          return ListView.builder(
                            itemBuilder: (context, index) =>
                                WorkOrderCardWidget(
                              workOrder: snapshot.data![index],
                              // workOrder: reversedList[index],
                              isSearch: false,
                            ),
                            itemCount: snapshot.data!.length,
                            // itemCount: reversedList.length,
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                    FutureBuilder<List<WorkOrder>>(
                      // future: _uploadedWorkOrdersData,
                      future: service.getUploadedWorkOrders(),

                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else if (!snapshot.hasData) {
                          return const Center(
                            child: Text(" There is no work orders"),
                          );
                        } else if (snapshot.hasData) {
                          // var reversedList = snapshot.data!.reversed.toList();
                          return ListView.builder(
                            itemBuilder: (context, index) =>
                                WorkOrderCardWidget(
                              workOrder: snapshot.data![index],
                              // workOrder: reversedList[index],
                              isSearch: false,
                            ),
                            itemCount: snapshot.data!.length,
                            // itemCount: reversedList.length,
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
