part of 'counter_freezed_bloc.dart';

@freezed
class CounterFreezedEvent with _$CounterFreezedEvent {
  const factory CounterFreezedEvent.increment() = Increment;
  const factory CounterFreezedEvent.decrement() = Decrement;
  const factory CounterFreezedEvent.reset() = Reset;
}
