import 'package:digital_marketing/core/domain/domain_exception.dart';
import 'package:digital_marketing/domain/base/use_case.dart';
import 'package:digital_marketing/domain/entity/profile.dart';
import 'package:digital_marketing/domain/repository/auth_repository.dart';
import 'package:digital_marketing/domain/request_model/empty_request_model.dart';

class GetProfileUseCase
    extends UseCase<AuthRepository, EmptyRequestModel, ProfileInfo> {
  GetProfileUseCase(super.repository);

  @override
  Future<ProfileInfo> executor(EmptyRequestModel requestModel) {
    return repository.getProfile(requestModel);
  }

  @override
  Future<DomainException> handleException(Object e) {
    throw UnimplementedError();
  }
}
