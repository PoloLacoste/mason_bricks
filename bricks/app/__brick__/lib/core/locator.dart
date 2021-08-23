import 'package:get_it/get_it.dart';

// core
// services
import 'services/core_service.dart';

// shared
// datasources
import '../shared/data/datasources/data_source_impl.dart';
import '../shared/data/datasources/data_source.dart';
// repositories
import '../shared/data/repositories/repository_impl.dart';
import '../shared/domain/repositories/repository.dart';
// services
import '../shared/domain/services/shared_service_impl.dart';
import '../shared/domain/services/shared_service.dart';

// core
// services
export 'services/core_service.dart';

// shared
// datasources
export '../shared/data/datasources/data_source_impl.dart';
export '../shared/data/datasources/data_source.dart';
// repositories
export '../shared/data/repositories/repository_impl.dart';
export '../shared/domain/repositories/repository.dart';
// services
export '../shared/domain/services/shared_service_impl.dart';
export '../shared/domain/services/shared_service.dart';

final GetIt locator = GetIt.instance;

Future<void> configure() async {
  await locator.reset();

  // third party dependencies

  // core
  // services
  locator.registerLazySingleton(() => CoreService());

  // shared
  // datasources
  locator.registerLazySingleton<DataSource>(() => DataSourceImpl());
  // repositories
  locator.registerLazySingleton<Repository>(() => RepositoryImpl());
  // services
  locator.registerLazySingleton<SharedService>(() => SharedServiceImpl());

  await locator.allReady(ignorePendingAsyncCreation: false);
}
