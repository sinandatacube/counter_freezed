part of 'counter_freezed_bloc.dart';

@freezed
class CounterFreezedState with _$CounterFreezedState {
  // const factory CounterFreezedState.initial() = _Initial;
  const factory CounterFreezedState({required int count}) =
      _CounterFreezedState;

  factory CounterFreezedState.initial() => const CounterFreezedState(count: 0);
}
