import 'package:isar/isar.dart';

import 'package:database/common/entity/base.entity.dart';

abstract class BaseDao<T extends BaseEntity> {
  Future<List<T>> getAll();
  Future<T> getById({required Id id});
  Future<int> save({required T entity});
  Future<bool> delete({required Id id});
}
