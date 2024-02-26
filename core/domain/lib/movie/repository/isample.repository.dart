import 'package:domain/movie/bo/sample.bo.dart';

abstract class ISampleRepository {
  Future<SampleBo> getRemoteSample({String? force});

  Future<List<SampleBo>> getLocalSamples();
  Future<SampleBo> getLocalSample({required int id});
  Future<int> saveLocalSample({required SampleBo sample});
  Future<void> removeLocalSample({required int id});
}
