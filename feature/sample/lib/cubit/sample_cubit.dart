import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:domain/movie/repository/isample.repository.dart';
import 'package:domain/movie/bo/sample.bo.dart';

part 'sample_state.dart';

class SampleCubit extends Cubit<SampleState> {
  SampleCubit(this.repository) : super(const SampleState());
  ISampleRepository repository;

  void request(String? request) async {
    final sample = await repository.getRemoteSample(force: request);
    emit(state.copy(sample: sample));
  }

  toggleFavorite(SampleBo? sample) {
    if (sample != null) {
      repository.saveLocalSample(sample: sample);
    }
  }
}
