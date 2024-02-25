import 'package:database/dao/sample.dao.dart';
import 'package:database/entity/sample/sample.entity.dart';

import 'isample.localdatasource.dart';

class SampleLocalDataSource implements ISampleLocalDataSource {
  SampleLocalDataSource(this._sampleDao);
  final SampleDao _sampleDao;

  @override
  Future<SampleEntity> getSample({required int id}) {
    // TODO: implement getSample
    throw UnimplementedError();
  }

  @override
  Future<List<SampleEntity>> getSamples() {
    // TODO: implement getSamples
    throw UnimplementedError();
  }

  @override
  Future<void> removeSample({required int id}) {
    // TODO: implement removeSample
    throw UnimplementedError();
  }

  @override
  Future<List<int>> saveSample({required SampleEntity sample}) async {
    return await _sampleDao.insert(samples: [sample]);
  }
}
