import 'package:database/sample/entity/sample.entity.dart';
import 'package:domain/movie/bo/sample.bo.dart';
import 'package:domain/movie/repository/isample.repository.dart';
import 'package:network/dto/sample.dto.dart';

import '../data_source/local/isample.localdatasource.dart';
import '../data_source/remote/isample.remotedatasource.dart';

class SampleRepository implements ISampleRepository {
  SampleRepository(this._remoteDataSource, this._localDataSource);
  final ISampleRemoteDataSource _remoteDataSource;
  final ISampleLocalDataSource _localDataSource;

  @override
  Future<SampleBo> getRemoteSample({String? force}) async {
    final response = await _remoteDataSource.getSample(force: force);
    return response.toBo();
  }

  @override
  Future<SampleBo> getLocalSample({required int id}) {
    throw UnimplementedError();
  }

  @override
  Future<List<SampleBo>> getLocalSamples() {
    throw UnimplementedError();
  }

  @override
  Future<void> removeLocalSample({required int id}) {
    throw UnimplementedError();
  }

  @override
  Future<int> saveLocalSample({required SampleBo sample}) async {
    return await _localDataSource.saveSample(sample: sample.toEntity());
  }
}

extension on SampleDto {
  SampleBo toBo() => SampleBo(
        answer: answer,
        urlGif: image,
      );
}

extension on SampleBo {
  SampleEntity toEntity() => SampleEntity(
        answer: Answer.values.firstWhere((element) => element.name == answer),
        gif: urlGif,
      );
}

extension on SampleEntity {
  SampleBo toBo() => SampleBo(
        answer: answer.name,
        urlGif: gif,
      );
}
