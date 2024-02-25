import 'package:database/entity/schemas.barrel.dart';

abstract interface class ISampleLocalDataSource {
  Future<List<SampleEntity>> getSamples();
  Future<SampleEntity> getSample({required int id});
  Future<List<int>> saveSample({required SampleEntity sample});
  Future<void> removeSample({required int id});
}
