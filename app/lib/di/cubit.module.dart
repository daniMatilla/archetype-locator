import 'package:locator/locator.dart';
import 'package:sample/cubit/sample_cubit.dart';

get cubitModule => {
      getIt.registerSingleton<SampleCubit>(SampleCubit(get())),
    };
