import 'package:data/sample/repository/sample.repository.dart';
import 'package:domain/movie/repository/isample.repository.dart';
import 'package:locator/locator.dart';

get repositoryModule => {
      getIt.registerSingleton<ISampleRepository>(SampleRepository(get(), get())),
    };
