import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_a_copy_event.dart';
part 'counter_a_copy_state.dart';

class CounterACopyBloc extends Bloc<CounterACopyEvent, CounterACopyState> {
  CounterACopyBloc() : super(CounterACopyState(count: 0)) {
    //! on<eventName>
    on<CounterACopyAddEvent>((event, emit) {
      emit(state.copyWith(
          count: state.count + 1)); // ! emit copyWith and change value
    });

    on<CounterACopyResetEvent>((event, emit) {
      emit(state.copyWith(count: 0));
    });
  }
}
