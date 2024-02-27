import 'package:favorite/cubit/favorite_cubit.dart';
import 'package:locator/locator.dart';
import 'package:sample/cubit/sample_cubit.dart';

get cubitModule => {
      getIt.registerFactory<SampleCubit>(() => SampleCubit(get())),
      getIt.registerFactory<FavoriteCubit>(() => FavoriteCubit(get())),
    };
