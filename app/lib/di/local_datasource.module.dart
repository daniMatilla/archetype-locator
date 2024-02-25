import 'package:locator/locator.dart';
import 'package:database/dao/sample.dao.dart';

import 'package:database/database.service.dart';
import 'package:data/sample/data_source/local/isample.localdatasource.dart';
import 'package:data/sample/data_source/local/sample.localdatasource.dart';

get localDataSourceModule => {
      getIt.registerSingleton(DataBaseService().db),

      //#region DAOs

      getIt.registerSingleton(SampleDao(get())),
      //#endregion

      //#region LOCAL_DATASOURCE

      getIt.registerSingleton<ISampleLocalDataSource>(SampleLocalDataSource(get())),
      //#endregion
    };
