part of 'authentication_repository_bloc.dart';

abstract class AuthenticationRepositoryEvent extends Equatable {
  const AuthenticationRepositoryEvent();

  @override
  List<Object> get props => [];
}

class AuthenticationRepositoryLoginEvent {}

class AuthenticationRepositoryLogoutEvent {}
