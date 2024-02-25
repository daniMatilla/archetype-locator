import 'package:isar/isar.dart';

import 'package:database/common/entity/base.entity.dart';

abstract interface class BaseDao<T extends BaseEntity> {
  Future<List<T>> getAll();

  Future<T> get({required Id id});

  Future<List<int>> insert({required List<T> samples});

  Future<bool> update({required T sample});

  Future<Id> delete({required Id id});
}
