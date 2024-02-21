import 'package:network/dto/sample.dto.dart';

abstract class ISampleRemoteDataSource {
  Future<SampleDto> getSample({int page = 1});
}
