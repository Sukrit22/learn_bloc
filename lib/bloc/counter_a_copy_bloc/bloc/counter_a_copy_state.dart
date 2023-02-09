part of 'counter_a_copy_bloc.dart';

class CounterACopyState extends Equatable {
  const CounterACopyState({required this.count});

  // ! bloc state variables
  final int count;

  // ! copyWith to help with cloning state
  CounterACopyState copyWith({int? count}) {
    return CounterACopyState(
        count: count ??
            this.count); //! ?? this.count as to help with null value passed
  }

  @override
  List<Object> get props => [count];
}
