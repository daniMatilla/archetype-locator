import 'package:network/dto/sample.dto.dart';
import 'package:network/services/services.barrel.dart';

import 'isample.remotedatasource.dart';

class SampleRemoteDataSource implements ISampleRemoteDataSource {
  SampleRemoteDataSource(this._sampleService);
  final SampleService _sampleService;

  @override
  Future<SampleDto> getSample({int page = 1}) {
    return _sampleService.getSample(page: page);
  }
}
