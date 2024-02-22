import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:locator/locator.dart';
import 'package:domain/movie/repository/isample.repository.dart';
import 'package:domain/movie/bo/sample.bo.dart';

part 'sample_state.dart';

class SampleCubit extends Cubit<SampleState> {
  final _repository = getIt<ISampleRepository>();

  SampleCubit() : super(const SampleState());

  request(String? request) async {
    emit(state.update(loading: true));
    await Future.delayed(const Duration(seconds: 2));
    final sample = await _repository.getSample(force: request);
    emit(state.update(sample: sample, loading: false));
  }
}
