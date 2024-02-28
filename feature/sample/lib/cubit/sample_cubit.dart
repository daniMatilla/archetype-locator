import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:design_system/common/navigation.dart';
import 'package:design_system/common/shared_routes.dart';
import 'package:domain/movie/repository/isample.repository.dart';
import 'package:domain/movie/bo/sample.bo.dart';

part 'sample_state.dart';

class SampleCubit extends Cubit<SampleState> with Navigation {
  SampleCubit(this._repository) : super(const SampleState());
  final ISampleRepository _repository;

  void request(String? request) async {
    final sample = await _repository.getRemoteSample(force: request);
    final localSample = await _isLocalSample(sample);
    emit(state.update(sample: sample, isFavorite: localSample != null));
  }

  void toggleFavorite(SampleBo sample) async {
    final localSample = await _isLocalSample(sample);
    if (localSample == null) {
      _repository.saveLocalSample(sample: sample);
      emit(state.update(sample: sample, isFavorite: true));
    } else {
      final isRemoveFromFavorites = await _repository.removeLocalSample(gif: sample.urlGif);
      emit(state.update(sample: sample, isFavorite: !isRemoveFromFavorites));
    }
  }

  void showFavorites() => pushScreen(SharedRoutes.favorites);

  Future<SampleBo?> _isLocalSample(SampleBo sample) => _repository.getLocalSample(gif: sample.urlGif);
}
