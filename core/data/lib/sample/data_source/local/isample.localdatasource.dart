import 'package:database/sample/entity/sample.entity.dart';

abstract interface class ISampleLocalDataSource {
  Future<List<SampleEntity>> getSamples();
  Future<SampleEntity> getSample({required int id});
  Future<int> saveSample({required SampleEntity sample});
  Future<void> removeSample({required int id});
}
