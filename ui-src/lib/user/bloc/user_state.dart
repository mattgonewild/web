part of 'user_bloc.dart';

class UserState extends Equatable {
  final bool isLoggedIn;
  final bool themeState;

  const UserState({required this.isLoggedIn, required this.themeState});

  UserState copyWith({bool? isLoggedIn, bool? themeState}) {
    return UserState(
        isLoggedIn: isLoggedIn ?? this.isLoggedIn,
        themeState: themeState ?? this.themeState);
  }

  @override
  List<Object> get props => [isLoggedIn, themeState];
}
