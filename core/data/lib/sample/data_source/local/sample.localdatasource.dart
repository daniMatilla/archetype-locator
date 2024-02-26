import 'isample.localdatasource.dart';

import 'package:database/sample/dao/sample.dao.dart';
import 'package:database/sample/entity/sample.entity.dart';

class SampleLocalDataSource implements ISampleLocalDataSource {
  SampleLocalDataSource(this._sampleDao);
  final SampleDao _sampleDao;

  @override
  Future<SampleEntity> getSample({required int id}) {
    throw UnimplementedError();
  }

  @override
  Future<int> saveSample({required SampleEntity sample}) async {
    return await _sampleDao.save(entity: sample);
  }

  @override
  Future<List<SampleEntity>> getSamples() {
    throw UnimplementedError();
  }

  @override
  Future<void> removeSample({required int id}) {
    throw UnimplementedError();
  }
}
