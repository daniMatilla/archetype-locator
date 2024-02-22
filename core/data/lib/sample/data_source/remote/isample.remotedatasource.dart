import 'package:network/dto/sample.dto.dart';

abstract class ISampleRemoteDataSource {
  Future<SampleDto> getSample({String? force});
}
