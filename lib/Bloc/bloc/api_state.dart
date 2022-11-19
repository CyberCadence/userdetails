// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'api_bloc.dart';

abstract class ApiState {}

class ApiInitialState extends ApiState {}
class ApiLoadingState extends ApiState{}
class ApiLoadedState extends ApiState{



List<User>user=[];
ApiLoadedState({required this.user});


}

class ApiErrorState extends ApiState {
  final String message;
  ApiErrorState({
    required this.message,
  });
}


