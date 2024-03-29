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
    final result = await _remoteDataSource.getSample(force: force);
    return result.toBo();
  }

  @override
  Future<SampleBo?> getLocalSample({required String gif}) async {
    final result = await _localDataSource.getSample(gif: gif);
    return result?.toBo();
  }

  @override
  Future<List<SampleBo>> getLocalSamples() async {
    final result = await _localDataSource.getSamples();
    return result.map((e) => e.toBo()).toList();
  }

  @override
  Future<bool> removeLocalSample({required String gif}) async {
    return await _localDataSource.removeSample(gif: gif);
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
