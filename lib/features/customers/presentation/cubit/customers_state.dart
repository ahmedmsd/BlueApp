part of 'customers_cubit.dart';

abstract class CustomersState extends Equatable {
  const CustomersState();

  @override
  List<Object> get props => [];
}

class CustomersInitial extends CustomersState {}

// get customers
class GetCustomersLoadingState extends CustomersState {}

class GetCustomersErrorState extends CustomersState {
  final dynamic errorMessage;
  const GetCustomersErrorState({required this.errorMessage});
}

class GetCustomersLoadedState extends CustomersState {
  final List<CustomerEntity> customers;

  const GetCustomersLoadedState({required this.customers});
  @override
  List<Object> get props => [customers];
}
