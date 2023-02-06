import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:user_repo/user_repo.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepo _userRepo;
  late StreamSubscription<User> _userRepoSub;

  UserBloc({required UserRepo userRepo})
      : _userRepo = userRepo,
        super(const UserState(isLoggedIn: false, themeState: true)) {
    on<UserChanged>(_onUserChanged);
    on<UserRequestedLogout>(_onUserRequestedLogout);
    on<UserRequestedLogin>(_onUserRequestedLogin);
    on<UserRequestedThemeChange>(_onUserRequestedThemeChange);
    _userRepoSub = _userRepo.user.listen(
      (newUser) {
        add(UserChanged(newUser));
      },
    );
    _userRepo.init();
  }

  @override
  Future<void> close() {
    _userRepoSub.cancel();
    _userRepo.dispose();
    return super.close();
  }

  void _onUserChanged(UserChanged event, Emitter<UserState> emit) {
    if (event.newUser == anonymouse) {
      return emit(state.copyWith(isLoggedIn: false));
    }
    return emit(state.copyWith(isLoggedIn: true));
  }

  void _onUserRequestedLogout(
      UserRequestedLogout event, Emitter<UserState> emit) {
    _userRepo.logOut();
  }

  void _onUserRequestedLogin(
      UserRequestedLogin event, Emitter<UserState> emit) {
    _userRepo.login(event.provider);
  }

  void _onUserRequestedThemeChange(
      UserRequestedThemeChange event, Emitter<UserState> emit) {
    _userRepo.themeManager.toggleTheme();
    emit(state.copyWith(themeState: !state.themeState));
  }
}
