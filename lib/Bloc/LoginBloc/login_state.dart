import 'package:fmis_portal/Model/index.dart';

enum LoginStatus { initial, submitting, success, error }

class LoginState  {
  final String phoneNumber;
  final String password;
  final LoginStatus status;
  final Failure failure;

  bool get isFormValid => phoneNumber.isNotEmpty && password.isNotEmpty;

  const LoginState({
    required this.phoneNumber,
    required this.password,
    required this.status,
    required this.failure,
  });

  factory LoginState.initial() {
    return LoginState(
      phoneNumber: '',
      password: '',
      status: LoginStatus.initial,
      failure: const Failure(),
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [phoneNumber, password, status, failure];

  LoginState copyWith({
    String? phoneNumber,
    String? password,
    LoginStatus? status,
    Failure? failure,
  }) {
    return LoginState(
      phoneNumber: phoneNumber ?? this.phoneNumber,
      password: password ?? this.password,
      status: status ?? this.status,
      failure: failure ?? this.failure,
    );
  }
}