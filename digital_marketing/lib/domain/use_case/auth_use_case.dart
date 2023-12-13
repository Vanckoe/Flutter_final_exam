import 'package:digital_marketing/core/domain/domain_exception.dart';
import 'package:digital_marketing/domain/base/use_case.dart';
import 'package:digital_marketing/domain/repository/auth_repository.dart';
import 'package:digital_marketing/domain/request_model/auth_request_model.dart';

class AuthUseCase extends UseCase<AuthRepository, AuthRequestModel, bool>{
  AuthUseCase(super.repository);

  @override
  Future<bool> executor(AuthRequestModel requestModel) {
    return repository.auth(requestModel);
  }

  @override
  Future<DomainException> handleException(Object e) async {
    return UnknownException();
  }

}