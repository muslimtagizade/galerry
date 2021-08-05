import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global_event.dart';
part 'global_state.dart';
part 'global_bloc.freezed.dart';

class GlobalBloc extends Bloc<GlobalEvent, GlobalState> {
  GlobalBloc() : super(_SplashState());

  @override
  Stream<GlobalState> mapEventToState(
    GlobalEvent event,
  ) async* {
    yield* event.map(welcome: _splashToWelcome);
  }

  Stream<GlobalState> _splashToWelcome(_WelcomeEvent event) async* {
    await Future.delayed(Duration(seconds: 2));
    yield GlobalState.welcome();
  }
}
