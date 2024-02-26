import 'package:isar/isar.dart';

import 'package:database/common/dao/base.dao.dart';

import '../entity/sample.entity.dart';

class SampleDao implements BaseDao<SampleEntity> {
  SampleDao(this.dbInstance);
  final Future<Isar> dbInstance;

  @override
  Future<int> save({required SampleEntity entity}) async {
    final db = await dbInstance;
    return db.writeTxnSync(() => db.sampleEntitys.putSync(entity));
  }

  @override
  Future<Id> delete({required Id id}) {
    throw UnimplementedError();
  }

  @override
  Future<SampleEntity> get({required Id id}) {
    throw UnimplementedError();
  }

  @override
  Future<List<SampleEntity>> getAll() {
    throw UnimplementedError();
  }

  @override
  Future<bool> update({required SampleEntity entity}) {
    throw UnimplementedError();
  }
}
