import 'package:get_it/get_it.dart';

// core
// services
import 'services/core_service.dart';

// datasources
import 'package:{{name.snakeCase()}}/data/datasources/data_source.dart';
// repositories
import 'package:{{name.snakeCase()}}/data/repositories/repository_impl.dart';
import 'package:{{name.snakeCase()}}/domain/repositories/repository.dart';
// services
import 'package:{{name.snakeCase()}}/domain/services/domain_service.dart';

// core
// services
export 'services/core_service.dart';

// datasources
export 'package:{{name.snakeCase()}}/data/datasources/data_source.dart';
// repositories
export 'package:{{name.snakeCase()}}/domain/repositories/repository.dart';
// services
export 'package:{{name.snakeCase()}}/domain/services/domain_service.dart';

final GetIt locator = GetIt.instance;

Future<void> configure() async {
  await locator.reset();

  // third party dependencies

  // core
  // services
  locator.registerLazySingleton(() => CoreService());

  // datasources
  locator.registerLazySingleton(() => DataSource());

  // repositories
  locator.registerLazySingleton<Repository>(() => RepositoryImpl());

  // services
  locator.registerLazySingleton(() => DomainService());

  await locator.allReady(
    ignorePendingAsyncCreation: false,
  );
}
