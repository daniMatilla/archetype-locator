import 'isample.localdatasource.dart';

import 'package:database/sample/dao/sample.dao.dart';
import 'package:database/sample/entity/sample.entity.dart';

class SampleLocalDataSource implements ISampleLocalDataSource {
  SampleLocalDataSource(this._sampleDao);
  final SampleDao _sampleDao;

  @override
  Future<SampleEntity?> getSample({required String gif}) {
    return _sampleDao.getByGif(gif: gif);
  }

  @override
  Future<int> saveSample({required SampleEntity sample}) {
    return _sampleDao.save(entity: sample);
  }

  @override
  Future<List<SampleEntity>> getSamples() {
    return _sampleDao.getAll();
  }

  @override
  Future<bool> removeSample({required String gif}) {
    return _sampleDao.deleteByGif(gif: gif);
  }
}
