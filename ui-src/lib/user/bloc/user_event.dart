part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class UserChanged extends UserEvent {
  final User newUser;

  const UserChanged(this.newUser);
}

class UserRequestedLogout extends UserEvent {
  const UserRequestedLogout();
}

class UserRequestedLogin extends UserEvent {
  final AuthProvider provider;

  const UserRequestedLogin(this.provider);
}

class UserRequestedThemeChange extends UserEvent {
  const UserRequestedThemeChange();
}
