part of 'user_bloc.dart';

class UserState extends Equatable {
  final bool isLoggedIn;
  final bool themeState;
  final String error;

  const UserState(
      {required this.isLoggedIn,
      required this.themeState,
      required this.error});

  UserState copyWith({bool? isLoggedIn, bool? themeState, String? error}) {
    return UserState(
        isLoggedIn: isLoggedIn ?? this.isLoggedIn,
        themeState: themeState ?? this.themeState,
        error: error ?? this.error);
  }

  @override
  List<Object> get props => [isLoggedIn, themeState, error];
}
