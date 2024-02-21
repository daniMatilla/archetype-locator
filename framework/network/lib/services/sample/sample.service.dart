import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/sample.dto.dart';

part 'sample.service.g.dart';

@RestApi()
abstract class SampleService {
  factory SampleService(Dio dio, {String baseUrl}) = _SampleService;

  @GET(sample)
  Future<SampleDto> getSample({@Query('page') int page = 1});

  static const String sample = '/api';
}
