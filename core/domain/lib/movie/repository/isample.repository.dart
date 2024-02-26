import 'package:domain/movie/bo/sample.bo.dart';

abstract class ISampleRepository {
  Future<SampleBo> getRemoteSample({String? force});

  Future<List<SampleBo>> getLocalSamples();
  Future<SampleBo?> getLocalSample({required String gif});
  Future<int> saveLocalSample({required SampleBo sample});
  Future<bool> removeLocalSample({required String gif});
}
