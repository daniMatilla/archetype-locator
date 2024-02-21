import 'package:domain/movie/bo/sample.bo.dart';

abstract class ISampleRepository {
  Future<SampleBo> getSample(int page);
}
