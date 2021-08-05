part of 'global_bloc.dart';

@freezed
abstract class GlobalState with _$GlobalState {
  const factory GlobalState.splash() = _SplashState;
  const factory GlobalState.welcome() = _WelcomeState;
}
