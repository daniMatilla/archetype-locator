import 'package:isar/isar.dart';

import 'package:database/common/dao/base.dao.dart';

import '../entity/sample.entity.dart';

class SampleDao implements BaseDao<SampleEntity> {
  SampleDao(this.dbInstance);
  final Future<Isar> dbInstance;

  Future<SampleEntity?> getByGif({required String gif}) async {
    final db = await dbInstance;
    return db.sampleEntitys.getByGif(gif);
  }

  Future<bool> deleteByGif({required String gif}) async {
    final db = await dbInstance;
    return db.writeTxn(() => db.sampleEntitys.deleteByGif(gif));
  }

  @override
  Future<int> save({required SampleEntity entity}) async {
    final db = await dbInstance;
    return db.writeTxn(() => db.sampleEntitys.put(entity));
  }

  @override
  Future<SampleEntity> getById({required Id id}) {
    throw UnimplementedError();
  }

  @override
  Future<List<SampleEntity>> getAll() async {
    final db = await dbInstance;
    return db.sampleEntitys.where().findAll();
  }

  @override
  Future<bool> delete({required Id id}) {
    throw UnimplementedError();
  }
}
