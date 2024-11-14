import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_workapp/core/errors/failures.dart';
import 'package:test_workapp/core/usecases/usecases.dart';
import 'package:test_workapp/features/customers/domain/entities/customer_entity.dart';
import 'package:test_workapp/features/customers/domain/usecases/get_customers_use_case.dart';

part 'customers_state.dart';

class CustomersCubit extends Cubit<CustomersState> {
  final GetCustomersUseCase getCustomersUseCase;
  CustomersCubit({
    required this.getCustomersUseCase,
  }) : super(CustomersInitial());

  List<CustomerEntity> customersList = [];

  Future<bool> getCustomersFun() async {
    emit(GetCustomersLoadingState());
    final response = await getCustomersUseCase(NoParams());
    return response.fold((failure) {
      emit(GetCustomersErrorState(errorMessage: failureToString(failure)));
      return false;
    }, (customers) {
      customersList = customers;
      emit(GetCustomersLoadedState(customers: customers));
      return true;
    });
  }
}
