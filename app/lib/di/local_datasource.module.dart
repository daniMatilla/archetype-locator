import 'package:database/database.service.dart';
import 'package:locator/locator.dart';

get localDataSourceModule => {
      getIt.registerSingleton(DataBaseService()),
    };
