import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_workapp/collections/customers/customer.dart';
import 'package:test_workapp/collections/work_orders/work_order.dart';
import 'package:test_workapp/config/routes/routes.dart';
import 'package:test_workapp/core/utils/utils.dart';
import 'package:test_workapp/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_workapp/core/widgets/text_form_field.dart';
import 'package:test_workapp/isar_service.dart';

class AddWorkOrderScreen extends StatefulWidget {
  const AddWorkOrderScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<AddWorkOrderScreen> createState() => _AddWorkOrderScreenState();
}

class _AddWorkOrderScreenState extends State<AddWorkOrderScreen> {
  final isarService = IsarService();

  final TextEditingController workOrderNoController = TextEditingController();
  final TextEditingController customerNameController = TextEditingController();
  final TextEditingController customerIDController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  // Future<List<Customer>> _customersData = Future.value([]);
  Customer? dropdownCustomerValue;
  WorkOrder? workOrder;
  // @override
  // void initState() {
  //   _customersData = isarService.getAllCustomers().then((customers) {
  //     dropdownCustomerValue = customers.first;
  //     return customers;
  //   });
  //   super.initState();
  // }

  @override
  void dispose() {
    workOrderNoController.dispose();
    customerNameController.dispose();
    customerIDController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorBackground2,
      appBar: AppBar(title: const Text('Add Work Order')),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 0.05.sh,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Work Order No',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              InputFieldMake(
                inputController: workOrderNoController,
                // isNumber: true,
                textInputType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]'),
                  ),
                ],
                validatorInput: (input) {
                  if (input!.trim().isEmpty) {
                    return "required";
                  } else if (workOrder != null) {
                    return 'Work Order already exists!';
                  }

                  return null;
                },
                onChanged: (woId) async {
                  if (workOrderNoController.text.isNotEmpty) {
                    workOrder =
                        await isarService.getWorkOrderByWoId(int.parse(woId));
                    setState(() {});
                  }
                },
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Customer Name',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              // FutureBuilder<List<Customer>>(
              //   future: _customersData,
              //   builder: (context, snapshot) {
              //     if (snapshot.connectionState ==
              //         ConnectionState.waiting) {
              //       return const Center(
              //         child: CircularProgressIndicator(),
              //       );
              //     } else if (!snapshot.hasData) {
              //       return const Center(
              //         child: Text(" There is no customers"),
              //       );
              //     } else if (snapshot.hasData) {
              //       return Container(
              //         decoration: BoxDecoration(
              //           color: Colors.white,
              //           border: Border.all(
              //             width: 1,
              //             color: const Color(0xffD4D4D4),
              //           ),
              //           borderRadius: BorderRadius.circular(5),
              //         ),
              //         child: DropdownButton<Customer>(
              //           underline: const SizedBox(),
              //           isExpanded: true,
              //           padding:
              //               const EdgeInsets.symmetric(horizontal: 10.0),
              //           value: dropdownCustomerValue,
              //           icon: const Icon(
              //             Icons.keyboard_arrow_down_rounded,
              //             color: AppColors.colorIcon1,
              //           ),
              //           items: snapshot.data!.map((e) {
              //             return DropdownMenuItem(
              //               value: e,
              //               child: Text(
              //                 '${e.customerName}',
              //                 style: AppTextStyle.textStyleApp(
              //                   color: AppColors.colorText3,
              //                   fontSize: 12.sp,
              //                   fontWeight: FontWeight.w700,
              //                 ),
              //               ),
              //             );
              //           }).toList(),
              //           onChanged: (value) {
              //             setState(() {
              //               dropdownCustomerValue = value!;
              //             });
              //           },
              //           menuMaxHeight: 0.5.sh,
              //           borderRadius:
              //               const BorderRadius.all(Radius.circular(10)),
              //         ),
              //       );
              //     } else {
              //       return const SizedBox();
              //     }
              //   },
              // ),
              DropdownSearch<Customer>(
                popupProps: const PopupProps.menu(
                  showSearchBox: true,
                ),
                filterFn: (customer, filter) => customer.customerName!
                    .toLowerCase()
                    .contains(filter.toLowerCase()),
                asyncItems: (String filter) async {
                  List<Customer> customersList =
                      await isarService.getAllCustomers();

                  return customersList;
                },
                itemAsString: (Customer u) => u.customerName!,
                onChanged: (value) {
                  setState(() {
                    dropdownCustomerValue = value!;
                  });
                },
                selectedItem: dropdownCustomerValue,
                dropdownButtonProps: const DropdownButtonProps(
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                validator: (Customer? item) {
                  if (item == null) {
                    return "Required";
                  } else {
                    return null;
                  }
                },
              ),
              // DropdownSearch<Customer>(
              //   asyncItems: (text) async {
              //     List<Customer> customersList =
              //         await isarService.getAllCustomers();

              //     return customersList;
              //   },
              //   filterFn: (item, filter) =>
              //       item.customerName!.startsWith(filter),
              //   popupProps: const PopupProps.menu(
              //     showSelectedItems: true,
              //     // disabledItemFn: (String s) => s.startsWith('I'),
              //   ),
              //   dropdownDecoratorProps: const DropDownDecoratorProps(
              //     dropdownSearchDecoration: InputDecoration(
              //       labelText: "Customer",
              //       hintText: "select customer",
              //     ),
              //   ),
              //   onChanged: (value) {
              //     setState(() {
              //       dropdownCustomerValue = value!;
              //     });
              //   },
              //   selectedItem: dropdownCustomerValue,
              // ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Customer ID',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              InputFieldMake(
                inputController: customerIDController,
                // isNumber: true,
                textInputType: TextInputType.phone,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'[0-9]'),
                  ),
                ],
                validatorInput: (input) {
                  return null;
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  title: 'Create',
                  radius: 10,
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      //! set customer name empty value if customer id != null
                      await isarService
                          .addWorkOrder(WorkOrder(
                            woId: int.parse(workOrderNoController.text),
                            // clientName: customerIDController.text.trim() != ''
                            //     ? ''
                            //     : dropdownCustomerValue?.customerName,
                            customerId: customerIDController.text.trim() != ''
                                ? int.parse(customerIDController.text.trim())
                                : dropdownCustomerValue?.customerId,
                            woDate: DateTime.now(),
                            dateAdded: DateTime.now(),
                            isSynced: false,
                            isUploaded: false,
                            sequence: 0,
                          ))
                          .then(
                            (_) => AppNavigator.navigateNamedFinish(
                              context,
                              Routes.layoutScreen,
                            ),
                          );
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
