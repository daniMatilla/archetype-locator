import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:domain/movie/repository/isample.repository.dart';
import 'package:domain/movie/bo/sample.bo.dart';

part 'sample_state.dart';

class SampleCubit extends Cubit<SampleState> {
  SampleCubit(this.repository) : super(const SampleState());
  ISampleRepository repository;

  void request(String? request) async {
    emit(state.update(loading: true));
    final sample = await repository.getSample(force: request);
    emit(state.update(sample: sample, loading: false));
  }
}
