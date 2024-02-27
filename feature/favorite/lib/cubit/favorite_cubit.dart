import 'package:design_system/common/navigation.dart';
import 'package:domain/movie/repository/isample.repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:domain/movie/bo/sample.bo.dart';

part 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> with Navigation {
  FavoriteCubit(this._repository) : super(const FavoriteState(samples: null));
  final ISampleRepository _repository;

  void getLocalSamples() async {
    final localSamples = await _repository.getLocalSamples();
    emit(state.update(samples: localSamples));
  }
}
