import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AppStarted extends AuthenticationEvent {
  @override
  String toString() => 'AppStarted';

  @override
  List<Object> get props => [];
}

class LoggedIn extends AuthenticationEvent {
  final String token;

  LoggedIn({@required this.token});

  @override
  String toString() => 'LoggedIn {token : $token}';

  @override
  List<Object> get props => [token];
}

class LoggedOut extends AuthenticationEvent {
  @override
  String toString() => 'LoggedOut';

  @override
  List<Object> get props => [];
}
