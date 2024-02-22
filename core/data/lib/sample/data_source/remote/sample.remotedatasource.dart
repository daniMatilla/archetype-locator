import 'package:network/dto/sample.dto.dart';
import 'package:network/services/services.barrel.dart';

import 'isample.remotedatasource.dart';

class SampleRemoteDataSource implements ISampleRemoteDataSource {
  SampleRemoteDataSource(this._sampleService);
  final SampleService _sampleService;

  @override
  Future<SampleDto> getSample({String? force}) {
    return _sampleService.getSample(force: force);
  }
}
