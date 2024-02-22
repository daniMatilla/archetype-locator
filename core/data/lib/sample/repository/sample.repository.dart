import 'package:domain/movie/bo/sample.bo.dart';
import 'package:domain/movie/repository/isample.repository.dart';
import 'package:network/dto/sample.dto.dart';

import '../data_source/remote/isample.remotedatasource.dart';

class SampleRepository implements ISampleRepository {
  SampleRepository(this._dataSource);
  final ISampleRemoteDataSource _dataSource;

  @override
  Future<SampleBo> getSample({String? force}) async {
    final response = await _dataSource.getSample(force: force);
    return response.toBo();
  }
}

extension on SampleDto {
  SampleBo toBo() => SampleBo(
        answer: answer,
        urlGif: image,
      );
}
