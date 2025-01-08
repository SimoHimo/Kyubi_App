import 'package:fpdart/fpdart.dart';
import 'package:kyubi/core/error/exceptions.dart';
import 'package:kyubi/core/error/failures.dart';
import 'package:kyubi/features/auth/data/datasources/auth_supabase_datasource.dart';
import 'package:kyubi/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthSupabaseDataSource supabaseDataSource;

  const AuthRepositoryImpl(this.supabaseDataSource);

  @override
  Future<Either<Failure, String>> loginWithEmailPassword(
      {required String email, required String password}) {
    // TODO: implement loginWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signupWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final userId = await supabaseDataSource.signupWithEmailPassword(
          name: name, email: email, password: password);
      return right(userId);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
