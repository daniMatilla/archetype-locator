import 'package:database/sample/entity/sample.entity.dart';

abstract interface class ISampleLocalDataSource {
  Future<List<SampleEntity>> getSamples();
  Future<SampleEntity?> getSample({required String gif});
  Future<int> saveSample({required SampleEntity sample});
  Future<bool> removeSample({required String gif});
}
