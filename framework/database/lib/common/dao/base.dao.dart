import 'package:database/common/entity/base.entity.dart';
import 'package:isar/isar.dart';

abstract class BaseDao<T extends BaseEntity> {
  List<T> getAll();

  T get({required Id id});

  bool insert({required List<T> samples});

  bool update({required T sample});

  Id delete({required Id id});
}
