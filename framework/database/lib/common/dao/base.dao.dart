import 'package:isar/isar.dart';

import 'package:database/common/entity/base.entity.dart';

abstract interface class BaseDao<T extends BaseEntity> {
  Future<List<T>> getAll();
  Future<T> get({required Id id});
  Future<int> save({required T entity});
  Future<bool> update({required T entity});
  Future<Id> delete({required Id id});
}
