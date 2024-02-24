import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/sample.dto.dart';

part 'sample.service.g.dart';

@RestApi()
abstract class SampleService {
  factory SampleService(Dio dio, {String baseUrl}) = _SampleService;

  @GET(api)
  Future<SampleDto> getSample({@Query('force') String? force});

  static const String api = '/api';
}
