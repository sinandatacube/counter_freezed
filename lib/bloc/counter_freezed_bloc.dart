import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_freezed_event.dart';
part 'counter_freezed_state.dart';
part 'counter_freezed_bloc.freezed.dart';

class CounterFreezedBloc
    extends Bloc<CounterFreezedEvent, CounterFreezedState> {
  CounterFreezedBloc() : super(CounterFreezedState.initial()) {
    on<Increment>((event, emit) {
      emit(state.copyWith(count: state.count + 1));
    });
    on<Decrement>((event, emit) {
      emit(state.copyWith(count: state.count - 1));
    });
    on<Reset>((event, emit) {
      emit(state.copyWith(count: 0));
    });
  }
}
