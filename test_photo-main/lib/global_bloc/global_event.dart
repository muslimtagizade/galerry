part of 'global_bloc.dart';

@freezed
abstract class GlobalEvent with _$GlobalEvent {
  const factory GlobalEvent.welcome() = _WelcomeEvent;
}