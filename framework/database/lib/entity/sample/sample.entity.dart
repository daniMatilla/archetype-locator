import 'package:database/common/entity/base.entity.dart';
import 'package:isar/isar.dart';

part 'sample.entity.g.dart';

@collection
@Name(_sampleEntityName)
class SampleEntity extends BaseEntity {
  @Enumerated(EnumType.name)
  late final Answer answer;
  late final String? urlGif;
}

const _sampleEntityName = 'Samples';

enum Answer { yes, no, maybe }
