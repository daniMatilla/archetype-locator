import 'package:database/common/entity/base.entity.dart';
import 'package:isar/isar.dart';

part 'sample.entity.g.dart';

@collection
@Name(SampleEntity.sampleTableName)
class SampleEntity extends BaseEntity {
  SampleEntity({
    required this.answer,
    required this.gif,
  });

  @override
  @Name(samplePrimaryKeyName)
  Id get id => super.id;
  @Enumerated(EnumType.name)
  final Answer answer;
  final String gif;

  static const sampleTableName = 'samples';
  static const samplePrimaryKeyName = 'sample';
}

enum Answer { yes, no, maybe }
