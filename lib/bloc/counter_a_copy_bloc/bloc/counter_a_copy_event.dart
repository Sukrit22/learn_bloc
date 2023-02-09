part of 'counter_a_copy_bloc.dart';

abstract class CounterACopyEvent extends Equatable {
  const CounterACopyEvent();

  @override
  List<Object> get props => [];
}

class CounterACopyAddEvent extends CounterACopyEvent {} //! add event as class

class CounterACopyResetEvent extends CounterACopyEvent {}
