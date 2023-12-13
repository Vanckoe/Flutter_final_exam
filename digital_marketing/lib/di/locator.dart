import 'package:digital_marketing/data/base/remote_client.dart';
import 'package:digital_marketing/data/remote/firebase_remote_client.dart';
import 'package:digital_marketing/data/repository/auth_repository_impl.dart';
import 'package:digital_marketing/domain/repository/auth_repository.dart';
import 'package:digital_marketing/domain/use_case/auth_use_case.dart';
import 'package:digital_marketing/domain/use_case/get_profile_use_case.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void initDiModule() {
  locator.registerSingleton<RemoteClient>(FirebaseRemoteClient());
  locator.registerFactory<AuthRepository>(() => AuthRepositoryImpl());
  locator.registerFactory<AuthUseCase>(
      () => AuthUseCase(locator.get<AuthRepository>()));
  locator.registerFactory<GetProfileUseCase>(
      () => GetProfileUseCase(locator.get<AuthRepository>()));
}
