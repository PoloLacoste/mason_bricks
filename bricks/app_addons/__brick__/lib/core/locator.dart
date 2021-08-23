import 'package:get_it/get_it.dart';

// core
// services
import 'services/core_service.dart';
import 'services/toast_service.dart';

// datasources
import '../data/datasources/data_source_impl.dart';
import '../data/datasources/data_source.dart';
// repositories
import '../data/repositories/repository_impl.dart';
import '../domain/repositories/repository.dart';
// services
import '../domain/services/domain_service_impl.dart';
import '../domain/services/domain_service.dart';

// core
// services
export 'services/core_service.dart';
export 'services/toast_service.dart';

// datasources
export '../data/datasources/data_source_impl.dart';
export '../data/datasources/data_source.dart';
// repositories
export '../data/repositories/repository_impl.dart';
export '../domain/repositories/repository.dart';
// services
export '../domain/services/domain_service_impl.dart';
export '../domain/services/domain_service.dart';

final GetIt locator = GetIt.instance;

Future<void> configure() async {
  await locator.reset();

  // third party dependencies

  // core
  // services
  locator.registerLazySingleton(() => CoreService());
  locator.registerLazySingleton(() => ToastService());

  // datasources
  locator.registerLazySingleton<DataSource>(() => DataSourceImpl());
  // repositories
  locator.registerLazySingleton<Repository>(() => RepositoryImpl());
  // services
  locator.registerLazySingleton<DomainService>(() => DomainServiceImpl());

  await locator.allReady(ignorePendingAsyncCreation: false);
}
