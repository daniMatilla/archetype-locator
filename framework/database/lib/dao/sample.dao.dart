import 'package:isar/isar.dart';

import 'package:database/common/dao/base.dao.dart';
import 'package:database/entity/schemas.barrel.dart';

class SampleDao implements BaseDao<SampleEntity> {
  SampleDao(this.dbInstance);
  final Future<Isar> dbInstance;

  @override
  Future<List<int>> insert({required List<SampleEntity> samples}) async {
    final db = await dbInstance;
    return db.writeTxnSync(() => db.sampleEntitys.putAllSync(samples));
  }

  @override
  Future<Id> delete({required Id id}) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<SampleEntity> get({required Id id}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<SampleEntity>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<bool> update({required SampleEntity sample}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
