import 'package:data/sample/data_source/remote/isample.remotedatasource.dart';
import 'package:data/sample/data_source/remote/sample.remotedatasource.dart';
import 'package:locator/locator.dart';
import 'package:network/client/dio.client.dart';
import 'package:network/services/services.barrel.dart';

get remoteDataSourceModule => {
      getIt.registerSingleton(DioClient().dio()),

      // #region SERVICES

      getIt.registerSingleton(SampleService(get())),
      // #endregion

      // #region REMOTE_DATASOURCES

      getIt.registerSingleton<ISampleRemoteDataSource>(SampleRemoteDataSource(get())),
      // #endregion
    };
