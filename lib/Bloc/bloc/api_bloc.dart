import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:userdetails/Model/Userlistmodel.dart';
import 'package:userdetails/Services/repository.dart';

part 'api_event.dart';
part 'api_state.dart';

class ApiBloc extends Bloc<ApiEvent, ApiState> {
  Repository repository;

  ApiBloc({required this.repository}) : super(ApiInitialState()) {
    on<ApiEvent>((event, emit) async {
      if (event is LoadAPiEvent) {
        emit(ApiLoadingState());

        List<User>? userList = await repository.getdata();
        if (userList == null) {
          emit(ApiErrorState(message: 'Please check Network'));
        } else {
          emit(ApiLoadedState(user: userList));
        }
      }
    });
  }
}
