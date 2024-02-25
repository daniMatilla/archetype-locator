import 'package:network/dto/sample.dto.dart';

abstract interface class ISampleRemoteDataSource {
  Future<SampleDto> getSample({String? force});
}
