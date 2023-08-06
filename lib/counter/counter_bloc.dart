import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialState()) {
    on<IncrementCount>((event, emit) {
      return emit(CounterState(count: state.count + 1));
    });

    on<DecrementCount>((event, emit) {
      return emit(CounterState(count: state.count - 1));
    });

    on<ResetCount>((event, emit) {
      return emit(CounterState(count: 0));
    });
  }
}
