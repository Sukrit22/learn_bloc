part of 'authentication_repository_bloc.dart';

enum AuthenticationStatus {unknown, authenticated, unauthenticated}

abstract class AuthenticationRepositoryState extends Equatable {
  const AuthenticationRepositoryState({required this.authenticationStatus});

  final AuthenticationStatus authenticationStatus;
  
  @override
  List<Object> get props => [];
}

class AuthenticationRepositoryInitial extends AuthenticationRepositoryState {}

