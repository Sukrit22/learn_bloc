import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_repository_event.dart';
part 'authentication_repository_state.dart';

class AuthenticationRepositoryBloc
    extends Bloc<AuthenticationRepositoryEvent, AuthenticationRepositoryState> {
  AuthenticationRepositoryBloc() : super(AuthenticationRepositoryInitial()) {
    on<AuthenticationRepositoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
