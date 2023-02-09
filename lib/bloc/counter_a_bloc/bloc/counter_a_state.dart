part of 'counter_a_bloc.dart';

/*abstract*/ class CounterAState extends Equatable {
  const CounterAState({required this.count});

  final int count;

  CounterAState copyWith({int? count}) {
    return CounterAState(count: count ?? this.count);
  }

  @override
  List<Object> get props => [
        count
      ]; // if the variable change and the interface should be updated, add the variable to the list
}

//class CounterAInitial extends CounterAState {}
