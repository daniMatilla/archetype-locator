import 'package:domain/movie/bo/sample.bo.dart';
import 'package:domain/movie/repository/isample.repository.dart';
import 'package:network/dto/sample.dto.dart';

import '../data_source/remote/isample.remotedatasource.dart';

class SampleRepository implements ISampleRepository {
  SampleRepository(this._dataSource);
  final ISampleRemoteDataSource _dataSource;

  @override
  Future<SampleBo> getSample(int page) async {
    final response = await _dataSource.getSample(page: page);
    return response.toBo();
  }
}

extension on SampleDto {
  SampleBo toBo() => SampleBo();
}
