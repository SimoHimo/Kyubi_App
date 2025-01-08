import 'package:fpdart/fpdart.dart';
import 'package:kyubi/core/error/failures.dart';
import 'package:kyubi/core/usecase/usecase.dart';
import 'package:kyubi/features/auth/domain/repository/auth_repository.dart';

class UserSignUp implements UseCase<String, UserSignUpParams> {
  final AuthRepository authRepository;

  const UserSignUp(this.authRepository);

  @override
  Future<Either<Failure, String>> call(UserSignUpParams params) async {
    return await authRepository.signupWithEmailPassword(
        name: params.name, email: params.email, password: params.password);

    // TODO: implement call
    throw UnimplementedError();
  }
}

class UserSignUpParams {
  final String email;
  final String password;
  final String name;

  UserSignUpParams(
      {required this.email, required this.password, required this.name});
}
