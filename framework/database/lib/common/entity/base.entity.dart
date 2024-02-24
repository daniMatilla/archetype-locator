import 'package:isar/isar.dart';

abstract class BaseEntity {
  final Id id = Isar.autoIncrement;
}
