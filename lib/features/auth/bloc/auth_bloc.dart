import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../repository/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(AuthStateInitial()) {
    on<LoginEvent>((event, emit) async{
    final username = event.username;
    final password = event.password;


    if (username.isEmpty ||  password.isEmpty){
      emit(const AuthStateError(error: ''));
      return;
    } else if (!isValidUsername(username)){
      emit(const AuthStateError(error: ''));
      return;
    }else if (!isValidPassword(password)){
      emit(const AuthStateError(error: ''));
      return;
    }

    emit(AuthStateLoading());
    try{
      final authResponse = await _authRepository.login(username, password);
      emit(AuthStateAuthenticated(token: authResponse.token));
    } catch (error) {
      emit(const AuthStateError(error: ''));
    }
    });

    // on<LogoutEvent>((event, emit) async{
    //   emit(AuthStateLoading());
    //   await _authRepository.logout();
    //   emit(AuthStateInitial());
    // });

  }
}

bool isValidUsername(String username){
  return username.length >= 6 && username.contains('@');
}
bool isValidPassword(String password){
  return password.length >= 8 && password.contains(RegExp('[a-z]')) && password.contains('[0-9]');
}